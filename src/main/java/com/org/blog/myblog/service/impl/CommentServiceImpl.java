package com.org.blog.myblog.service.impl;

import com.org.blog.myblog.entity.Article;
import com.org.blog.myblog.entity.Comment;
import com.org.blog.myblog.entity.User;
import com.org.blog.myblog.repository.ArticleRepository;
import com.org.blog.myblog.repository.CommentRepository;
import com.org.blog.myblog.repository.UserRepository;
import com.org.blog.myblog.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    CommentRepository commentRepository;
    @Autowired
    ArticleRepository articleRepository;
    @Autowired
    UserRepository userRepository;

    @Override
    public Page<Comment> findById(Integer id, Pageable pageable) {
        return commentRepository.findById(id,pageable);
    }

    @Override
    public Comment saveComment(Comment comment) {

        //类型 0 文章的评论 1 评论的评论 2 评论的回复
        int flag = 0;
        if(comment.getParent()!=null){
            if(comment.getParent().getId() != null){
                Integer parId = comment.getParent().getId();
                Comment parentComment = commentRepository.findById(parId);
                comment.setParent(parentComment);
                comment.setLevel("1");
            }
        }else{
            comment.setLevel("0");
        }

        Long uId = null;
        if(comment.getAuthor()!=null){
            if(comment.getAuthor().getId()!= null){
                uId = comment.getAuthor().getId();
            }
        }
        Integer aId = null;
        if(comment.getArticle()!=null){
            if(comment.getArticle().getId()!= null){
                aId = comment.getArticle().getId();
            }
        }
        Long  to_uId=null;
        if(comment.getToUser()!=null){
            if(comment.getToUser().getId() != null){
                to_uId =comment.getToUser().getId();
                comment.setLevel("2");
            }
        }

        Article one = articleRepository.findById(aId);
        User author = userRepository.findById(uId);
        User to_user = userRepository.findById(to_uId);
        comment.setAuthor(author);
        comment.setArticle(one);
        comment.setCreateDate(new Date());
        comment.setToUser(to_user);
        articleRepository.updateCommentCountsById(aId);
        Comment save = commentRepository.save(comment);
        return save;
    }

    @Override
    public void updateComment(Comment comment) {

    }

    @Override
    public Comment findById(Integer id) {

        Comment byId = commentRepository.findById(id);
        System.out.println(byId);
        return byId;
    }
}

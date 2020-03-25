package com.org.blog.myblog.controller;

import com.alibaba.fastjson.support.spring.annotation.FastJsonFilter;
import com.alibaba.fastjson.support.spring.annotation.FastJsonView;
import com.org.blog.myblog.common.annotation.LogAnnotation;
import com.org.blog.myblog.common.result.Result;
import com.org.blog.myblog.common.result.ResultApiHandler;
import com.org.blog.myblog.entity.Article;
import com.org.blog.myblog.entity.Comment;
import com.org.blog.myblog.entity.User;
import com.org.blog.myblog.service.CommentService;
import com.org.blog.myblog.vo.CommentsPageVo;
import com.org.blog.myblog.vo.PageVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/comments")
public class CommentController {

    @Autowired
    CommentService commentService;

    @GetMapping("/article/{id}")
    @LogAnnotation(module = "评论",operation = "获取文章评论")
    public Result getComments(@PathVariable("id") String id){

//        Comment byId = commentService.findById(Integer.parseInt("80"));
//        Article article = byId.getArticle();
//        System.out.println(article);;
//        Result success = ResultApiHandler.success(byId);
        PageRequest pageRequest = new PageRequest(0, 5,Sort.Direction.DESC, "create_date");
        Page<Comment> comments = commentService.findById(Integer.parseInt(id), pageRequest);
        CommentsPageVo commentsPageVo = loadCommentsPage(comments);
        Result success = ResultApiHandler.success(commentsPageVo);
        System.out.println(success);
        return success;
    }

    public CommentsPageVo loadCommentsPage(Page<Comment> comments){
        CommentsPageVo commentsPageVo = new CommentsPageVo();
        commentsPageVo.setPageNum(comments.getNumber());
        commentsPageVo.setPageSize(comments.getSize());
        commentsPageVo.setPageTotal(Integer.parseInt(String.valueOf(comments.getTotalElements())));
        commentsPageVo.setComments(new ArrayList<>());
        for (Comment comment : comments) {
            Comment comment1 = new Comment();
            comment1.setAuthor(comment.getAuthor());
            comment1.setToUser(comment.getToUser());  ;
            comment1.setContent(comment.getContent()); ;
            comment1.setCreateDate(comment.getCreateDate());  ;
            comment1.setToUser( comment.getToUser()); ;
            comment1.setId( comment.getId()); ;
            comment1.setChildrens( comment.getChildrens()); ;
            comment1.setParent(comment.getParent());  ;
            comment1.setLevel( comment.getLevel());
            commentsPageVo.getComments().add(comment1);
        }
        return commentsPageVo;

    }

    @PostMapping("/create/change")
    @LogAnnotation(module = "评论",operation = "用户评论")
    @FastJsonView(
            exclude = {@FastJsonFilter(clazz = Article.class,props = {})}
    )
    public Result saveComments(@RequestBody Comment comment){

        commentService.saveComment(comment);
        Result success = ResultApiHandler.success();
        return  success;
    }

    @RequestMapping("/articles")
    public Result getCommentsPage( String id,   PageVo pageVo){

        Integer pageSize = pageVo.getPageSize();
        String name = pageVo.getName();
        Integer pageNumber = pageVo.getPageNumber();
        String sort = pageVo.getSort();
        PageRequest pageRequest = new PageRequest(pageNumber-1, pageSize, Sort.Direction.DESC, "create_date");
        Page<Comment> comments = commentService.findById(Integer.parseInt(id), pageRequest);
        CommentsPageVo commentsPageVo = loadCommentsPage(comments);
        Result success = ResultApiHandler.success(commentsPageVo);
        System.out.println(success);
        return success;
    }







}

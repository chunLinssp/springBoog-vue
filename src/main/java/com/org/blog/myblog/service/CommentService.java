package com.org.blog.myblog.service;

import com.org.blog.myblog.entity.Comment;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface CommentService {

    public Page<Comment> findById(Integer id, Pageable pageable);

    public Comment saveComment(Comment comment);

    public void updateComment(Comment comment);

    public Comment findById(Integer id);
}

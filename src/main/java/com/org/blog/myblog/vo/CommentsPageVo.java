package com.org.blog.myblog.vo;

import com.org.blog.myblog.entity.Comment;

import java.util.List;

public class CommentsPageVo  {

     int pageTotal;
     int pageNum;
     int pageSize;

    List<Comment> comments;


    @Override
    public String toString() {
        return "CommentsPageVo{" +
                "comments=" + comments +
                '}';
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageTotal() {
        return pageTotal;
    }

    public void setPageTotal(int pageTotal) {
        this.pageTotal = pageTotal;
    }
}

package com.org.blog.myblog.vo;

import com.org.blog.myblog.entity.Article;

public class ArticleVo extends Article {

    private String newTime;

    @Override
    public String toString() {
        return "ArticleVo{" +
                "newTime='" + newTime + '\'' +
                '}';
    }

    public String getNewTime() {
        return newTime;
    }

    public void setNewTime(String newTime) {
        this.newTime = newTime;
    }
}

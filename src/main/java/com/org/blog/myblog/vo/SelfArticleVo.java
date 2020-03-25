package com.org.blog.myblog.vo;

import com.org.blog.myblog.entity.Article;

import java.util.List;

public class SelfArticleVo extends Article {

    private List<String> avatar;


    public List<String> getAvatar() {
        return avatar;
    }

    public void setAvatar(List<String> avatar) {
        this.avatar = avatar;
    }
}

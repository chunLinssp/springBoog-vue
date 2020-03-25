package com.org.blog.myblog.vo;

import com.org.blog.myblog.entity.Tag;

public class TagVO extends Tag {

    /**
     *
     */
    private static final long serialVersionUID = 5059212992497947120L;
    private int articles;

    public int getArticles() {
        return articles;
    }

    public void setArticles(int articles) {
        this.articles = articles;
    }


}

package com.org.blog.myblog.vo;

import com.org.blog.myblog.entity.Category;

import java.math.BigInteger;

public class CategoryVO extends Category {

    /**
     *
     */
    private static final long serialVersionUID = -2975739216517528014L;



    private int articles;

    public int getArticles() {
        return articles;
    }

    public void setArticles(int articles) {
        this.articles = articles;
    }
}

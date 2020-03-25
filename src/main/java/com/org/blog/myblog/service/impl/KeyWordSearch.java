package com.org.blog.myblog.service.impl;

import com.org.blog.myblog.entity.Article;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public class KeyWordSearch implements JpaSpecificationExecutor<Article> {

    @Override
    public  Article findOne(Specification< Article> specification) {
        return null;
    }

    @Override
    public List< Article> findAll(Specification< Article> specification) {
        return null;
    }

    @Override
    public Page< Article> findAll(Specification< Article> specification, Pageable pageable) {
        return null;
    }

    @Override
    public List< Article> findAll(Specification< Article> specification, Sort sort) {
        return null;
    }

    @Override
    public long count(Specification< Article> specification) {
        return 0;
    }
}

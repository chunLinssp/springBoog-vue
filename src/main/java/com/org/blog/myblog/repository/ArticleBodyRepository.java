package com.org.blog.myblog.repository;

import com.org.blog.myblog.entity.Article;
import com.org.blog.myblog.entity.ArticleBody;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ArticleBodyRepository  extends JpaRepository<ArticleBody,Integer> {


}

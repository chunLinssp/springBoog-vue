package com.org.blog.myblog.repository.wrapper;

import com.org.blog.myblog.entity.Article;
import com.org.blog.myblog.vo.ArticleVo;
import com.org.blog.myblog.vo.PageVo;
import com.org.blog.myblog.vo.SummaryVo;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ArticleWrapper {

    List<Article> listArticles(PageVo page);

//    List<Article> listArticles(ArticleVo article, PageVo page);

    List<ArticleVo> listArchives(PageVo pageVo);

//    List<Article> findAllArticleById(Long id, Pageable pageable);

    List<SummaryVo> findAllArticleSummaryPage(Pageable pageable);
}

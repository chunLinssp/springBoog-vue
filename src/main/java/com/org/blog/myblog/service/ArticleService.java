package com.org.blog.myblog.service;

import com.org.blog.myblog.entity.Article;
import com.org.blog.myblog.vo.ArticleVo;
import com.org.blog.myblog.vo.PageVo;
import com.org.blog.myblog.vo.SelfArticleVo;
import com.org.blog.myblog.vo.SummaryVo;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;
import java.util.Map;

public interface ArticleService {

    List<Article> listArticle(PageVo pageVo);

//    List<Article> listArticle(ArticleVo articleVo,PageVo pageVo);

    List<Article> listHotArticles(int size);

    List<Article> listNewArticles(int size);

    List<ArticleVo> listArchives(PageVo pageVo);

    Article getArticleById(Integer id);

    Page<Article> getAllArticleById(Long id, Pageable pageable);

    Page<Article> keywordSearch(Long id,String name,String preDate ,String laterDate, Pageable pageable);

    List<Article> search(String name,Long id,String preDate ,String laterDate,Pageable pageable);

    void deleteById(long parseLong, Integer articleId);

    Article saveArticle(Article article);

    List<SummaryVo> findAllArticle(Pageable pageable);

    List<Article> getRecommandTitle();

    List<Article> getArticleSummaryByTagId(Integer tagId);

    List<Article> findAll();


}

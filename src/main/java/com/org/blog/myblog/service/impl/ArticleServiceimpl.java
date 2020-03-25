package com.org.blog.myblog.service.impl;

import com.org.blog.myblog.common.utli.LimitUtlis;
import com.org.blog.myblog.common.utli.StringUtils;
import com.org.blog.myblog.entity.*;
import com.org.blog.myblog.repository.*;
import com.org.blog.myblog.service.ArticleService;
import com.org.blog.myblog.service.CategoryService;
import com.org.blog.myblog.service.UserService;
import com.org.blog.myblog.vo.ArticleVo;
import com.org.blog.myblog.vo.PageVo;
import com.org.blog.myblog.vo.SelfArticleVo;
import com.org.blog.myblog.vo.SummaryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class ArticleServiceimpl implements ArticleService {

    @Autowired
    ArticleRepository articleRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    TagRepository tagRepository;

    @Autowired
    ArticleBodyRepository articleBodyRepository;

    @Autowired
    CategoryRepository categoryRepository;

    @Override
    public List<Article> listArticle(PageVo pageVo) {
        return articleRepository.listArticles(pageVo);
    }

//    @Override
//    public List<Article> listArticle(ArticleVo articleVo, PageVo pageVo) {
//        return articleRepository.listArticles(articleVo,pageVo);
//    }

    @Override
    public List<Article> listHotArticles(int limit) {
        return articleRepository.findOrderByViewsAndLimit(limit);
    }

    @Override
    public List<Article> listNewArticles(int size) {
        return articleRepository.findOrderByCreateDateAndLimit(size);
    }

    @Override
    public List<ArticleVo> listArchives(PageVo pageVo) {
        return articleRepository.listArchives(pageVo);
    }

    @Override
    public Article getArticleById(Integer id) {
        Article one = articleRepository.findOne(id);
        return one;
    }

    @Override
    public Page<Article> getAllArticleById(Long id, Pageable pageable) {
        return articleRepository.findAllArticleById(id,pageable);
    }

    @Override
    public Page<Article> keywordSearch(Long id,String name, String preDate ,String laterDate,Pageable pageable) {
        return articleRepository.keywordSearch(id,name,preDate,laterDate,pageable);

    }

    @Override
    public List<Article> search(String name, Long id, String preDate, String laterDate,Pageable pageable) {
        List<Article> resultList = null;
        Date pre = null;
        Date later = null;
        if(preDate!= null && !preDate.isEmpty()){
            try{
                 pre = new SimpleDateFormat("yyyy-MM-dd").parse(preDate);
            }catch (Exception e){
                e.printStackTrace();
                return null;
            }
        }
        if(laterDate!= null  && !preDate.isEmpty()){
            try{
                 later = new SimpleDateFormat("yyyy-MM-dd").parse(laterDate);
            }catch (Exception e){
                e.printStackTrace();
                return null;
            }
        }

        Date finalPre = pre;
        Date finalLater = later;
        Specification<Article> querySepcifi = new Specification<Article>() {
            @Override
            public Predicate toPredicate(Root<Article> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                List<Predicate> predicates = new ArrayList<>();

                if(!StringUtils.isEmpty(preDate)){
                    predicates.add(criteriaBuilder.greaterThanOrEqualTo(root.get("createDate").as(Date.class), finalPre));
                }
                if (!StringUtils.isEmpty(laterDate)) {
                    //小于或等于传入时间
                    predicates.add(criteriaBuilder.lessThan(root.get("createDate").as(Date.class), finalLater));
                }
                if (!StringUtils.isEmpty(name)) {
                    //模糊查找
                    predicates.add(criteriaBuilder.like(root.get("title").as(String.class), "%" + name + "%"));
                }
//                if (!String.valueOf(id).isEmpty()) {
//                    predicates.add(criteriaBuilder.like(root.get("author").as(String.class), String.valueOf(id)));
//
//                }
                return criteriaBuilder.and(predicates.toArray(new Predicate[predicates.size()]));
            }
        };
        List<Article> articles = articleRepository.findAll(querySepcifi);
        User author = articles.get(0).getAuthor();
        String account = author.getAccount();
        Iterator iterator = articles.iterator();
        while(iterator.hasNext()){
            Article article =(Article) iterator.next();
            if(article.getAuthor().getId() != id){
                iterator.remove();
            }
        }
        return articles;
    }

    @Override
    public void deleteById(long parseLong, Integer id) {

        articleRepository.deleteOne(parseLong,id);
    }

    @Override
    public Article saveArticle(Article article) {
        Integer id = article.getId();
        article.setId(null);
        User user = userRepository.findById(Long.parseLong(String.valueOf(id)));
        article.setAuthor(user);
        Date date = new Date();
        article.setCreateDate(date);
        Article article1 = articleRepository.save(article);
        return article1;
    }

    @Override
    public List<SummaryVo> findAllArticle(Pageable pageable) {
        List<SummaryVo> summaryPage = articleRepository.findAllArticleSummaryPage(pageable);
        return summaryPage;
    }

    @Override
    public List<Article> getRecommandTitle() {
        List<Article> recommandTitle = articleRepository.getRecommandTitle();
        return recommandTitle;
    }

    @Override
    public List<Article> getArticleSummaryByTagId(Integer tagId) {
        List<Article> articleSummaryByTagId = articleRepository.findArticleSummaryByTagId(tagId);
        return articleSummaryByTagId;
    }

    @Override
    public List<Article> findAll() {
        return articleRepository.findAll();
    }


}

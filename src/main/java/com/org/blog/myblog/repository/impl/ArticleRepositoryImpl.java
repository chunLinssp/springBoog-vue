package com.org.blog.myblog.repository.impl;

import com.org.blog.myblog.entity.Article;
import com.org.blog.myblog.repository.wrapper.ArticleWrapper;
import com.org.blog.myblog.vo.ArticleVo;
import com.org.blog.myblog.vo.PageVo;
import com.org.blog.myblog.vo.SelfArticleVo;
import com.org.blog.myblog.vo.SummaryVo;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.transform.Transformers;
import org.hibernate.type.DateType;
import org.hibernate.type.IntegerType;
import org.hibernate.type.ListType;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class ArticleRepositoryImpl implements ArticleWrapper {

    @PersistenceContext
    private EntityManager em;

    @Override
    public List<Article> listArticles(PageVo page) {

        StringBuilder hql = new StringBuilder("from Article");

        if (null != page.getName() && !"".equals(page.getName())) {
            hql.append(" order by ");
            hql.append(page.getName());
        }

        if (null != page.getSort() && !"".equals(page.getSort())) {
            hql.append(" ");
            hql.append(page.getSort());
        }

        Query query = getSession().createQuery(hql.toString());

        if (null != page.getPageNumber() && null != page.getPageSize()) {
            query.setFirstResult(page.getPageSize() * (page.getPageNumber() - 1));
            query.setMaxResults(page.getPageSize());
        }

        return query.list();

    }

//    @Override
//    public List<Article> listArticles(ArticleVo article, PageVo page) {
//
//        StringBuilder hql = new StringBuilder("from Article a ");
//
//        if (null != article.getTagId()) {
//
//            hql.append(" inner join fetch a.tags t");
//        }
//
//        hql.append(" where 1=1 ");
//
//        if (null != article.getCategoryId()) {
//
//            hql.append(" and a.category.id = :categoryId");
//        }
//
//        if (null != article.getTagId()) {
//
//            hql.append(" and t.id = :tagId");
//        }
//
//
//        if (null != article.getYear() && !"".equals(article.getYear())) {
//            hql.append(" and YEAR(a.createDate) = :year");
//        }
//
//        if (null != article.getMonth() && !"".equals(article.getMonth())) {
//            hql.append(" and MONTH(a.createDate) = :month");
//        }
//
//        if (null != page.getName() && !"".equals(page.getName())) {
//            hql.append(" order by ");
//            hql.append(page.getName());
//        }
//
//        if (null != page.getSort() && !"".equals(page.getSort())) {
//            hql.append(" ");
//            hql.append(page.getSort());
//        }
//
//
//        Query query = getSession().createQuery(hql.toString());
//
//
//        if (null != article.getYear() && !"".equals(article.getYear())) {
//            query.setParameter("year", article.getYear());
//        }
//
//        if (null != article.getMonth() && !"".equals(article.getMonth())) {
//            query.setParameter("month", article.getMonth());
//        }
//
//        if (null != article.getTagId()) {
//            query.setParameter("tagId", article.getTagId());
//        }
//
//        if (null != article.getCategoryId()) {
//            query.setParameter("categoryId", article.getCategoryId());
//        }
//
//        if (null != page.getPageNumber() && null != page.getPageSize()) {
//            query.setFirstResult(page.getPageSize() * (page.getPageNumber() - 1));
//            query.setMaxResults(page.getPageSize());
//        }
//
//        return query.list();

//        StringBuilder hql = new StringBuilder("select a.* from me_article a ");
//
//        if (null != article.getTagId()) {
//
//            hql.append(" left join me_article_tag at on at.article_id = a.id");
//        }
//
//        hql.append(" where 1=1 ");
//
//        if (null != article.getCategoryId()) {
//
//            hql.append(" and a.category_id = :categoryId");
//        }
//
//        if (null != article.getTagId()) {
//
//            hql.append(" and at.tag_id = :tagId");
//        }
//
//
//        if (null != article.getYear() && !"".equals(article.getYear())) {
//            hql.append(" and YEAR(a.createDate) = :year");
//        }
//
//        if (null != article.getMonth() && !"".equals(article.getMonth())) {
//            hql.append(" and MONTH(a.createDate) = :month");
//        }
//
//        if (null != page.getName() && !"".equals(page.getName())) {
//            hql.append(" order by ");
//            hql.append(page.getName());
//        }
//
//        if (null != page.getSort() && !"".equals(page.getSort())) {
//            hql.append(" ");
//            hql.append(page.getSort());
//        }
//
//
//        SQLQuery query = getSession().createSQLQuery(hql.toString());
//
//
//        if (null != article.getYear() && !"".equals(article.getYear())) {
//            query.setParameter("year", article.getYear());
//        }
//
//        if (null != article.getMonth() && !"".equals(article.getMonth())) {
//            query.setParameter("month", article.getMonth());
//        }
//
//        if (null != article.getTagId()) {
//            query.setParameter("tagId", article.getTagId());
//        }
//
//        if (null != page.getPageNumber() && null != page.getPageSize()) {
//            query.setFirstResult(page.getPageSize() * (page.getPageNumber() - 1));
//            query.setMaxResults(page.getPageSize());
//        }
//
//        query.addEntity(Article.class);
//
//        return query.list();

//    }

    @Override
    public List<ArticleVo> listArchives(PageVo pageable) {
        String sql = "SELECT " +
                    "DATE_FORMAT(create_date,'%Y-%m-%d') AS newTime, " +
                    "summary AS summary, " +
                    "mar.id AS id   " +
                    "FROM " +
                    "me_article mar   " +
                    "ORDER BY " +
                    "create_date DESC";
        SQLQuery sqlQuery = getSession().createSQLQuery(sql);
        sqlQuery.addScalar("newTime");
        sqlQuery.addScalar("summary");
        sqlQuery.addScalar("id",IntegerType.INSTANCE);
        Integer firstNum = pageable.getPageNumber();
        if(pageable.getPageNumber() != 0){
            firstNum += 1;
        }
        Query query = sqlQuery.setResultTransformer(Transformers.aliasToBean(ArticleVo.class));
        query.setFirstResult(firstNum);
        query.setMaxResults(pageable.getPageSize());
        List list = query.list();
        return list;
    }

    @Override
    public List<SummaryVo> findAllArticleSummaryPage(Pageable pageable) {
        String sql = "SELECT " +
                "DATE_FORMAT(mar.create_date,'%Y-%m') as createDate, " +
                "mar.id as id, " +
                "mar.title as title, " +
                "mar.view_counts as viewCount, " +
                "mct.categoryname as categoryName, " +
                "mar.summary as summary, " +
                "CHAR_LENGTH(mab.content_html) as numCounts " +
                "FROM " +
                "me_article mar, " +
                "me_article_body mab, " +
                "me_category mct " +
                "WHERE " +
                "mar.body_id = mab.id " +
                "AND mar.category_id = mct.id";

        SQLQuery sqlQuery = getSession().createSQLQuery(sql);
        sqlQuery.addScalar("id",IntegerType.INSTANCE);
        sqlQuery.addScalar("createDate");
        sqlQuery.addScalar("summary");
        sqlQuery.addScalar("title");
        sqlQuery.addScalar("categoryName");
        sqlQuery.addScalar("viewCount",IntegerType.INSTANCE);
        sqlQuery.addScalar("numCounts",IntegerType.INSTANCE);
        Query query = sqlQuery.setResultTransformer(Transformers.aliasToBean(SummaryVo.class));
        Integer firstNum = pageable.getPageNumber();
        if(pageable.getPageNumber() != 0){
            firstNum += 1;
        }
        query.setFirstResult(firstNum);
        query.setMaxResults(pageable.getPageSize());
        List list = query.list();
        return query.list();

    }


//
//    @Override
//    public List<Article> findAllArticleById(Long id, Pageable page) {
//
//        String sql = "  " +
//                "SELECT  " +
//                "\tma.*,mp.avatar  " +
//                "FROM  " +
//                "\tme_article ma  " +
//                "LEFT  JOIN me_article_pic mp ON ma.id = mp.article_id  " +
//                "WHERE  " +
//                "\tma.author_id = :id   " +
//                "group by ma.id   " +
//                "ORDER BY Year(create_date) and MONTH(ma.create_date) DESC ";
//        SQLQuery sqlQuery = getSession().createSQLQuery(sql);
//        sqlQuery.setParameter("id",id);
//        sqlQuery.setFirstResult(page.getPageSize() * (page.getPageNumber() ));
//        sqlQuery.setMaxResults(page.getPageSize());
//        sqlQuery.addScalar("title", StandardBasicTypes.STRING);
//        sqlQuery.addScalar("comment_counts",IntegerType.INSTANCE);
//        sqlQuery.addScalar("view_counts",IntegerType.INSTANCE);
//        sqlQuery.addScalar("avatar");
//        sqlQuery.addScalar("create_date", DateType.INSTANCE);
//
//
//        Query query = sqlQuery.setResultTransformer(Transformers.aliasToBean(Article.class));
//
//
//        List list = query.list();
//        return list;
//    }


    private Session getSession() {
        return em.unwrap(Session.class);
    }


}

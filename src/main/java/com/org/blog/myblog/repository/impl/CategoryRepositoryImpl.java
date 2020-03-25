package com.org.blog.myblog.repository.impl;

import com.org.blog.myblog.entity.Article;
import com.org.blog.myblog.entity.Category;
import com.org.blog.myblog.repository.wrapper.CategoryWrapper;
import com.org.blog.myblog.vo.CategoryTreeVo;
import com.org.blog.myblog.vo.CategoryVO;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.transform.ResultTransformer;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class CategoryRepositoryImpl implements CategoryWrapper {

    @PersistenceContext
    private EntityManager em;

    @Override
    public List<CategoryVO> findAllDetail() {

        String sql = "SELECT  " +
                " mc.*, count(ma.category_id) as articles  " +
                "FROM  " +
                " me_category mc  " +
                "LEFT JOIN me_article ma ON mc.id = ma.category_id  " +
                "GROUP BY  " +
                "mc.id";
        SQLQuery sqlQuery = getSession().createSQLQuery(sql);

        sqlQuery.addScalar("id");
        sqlQuery.addScalar("categoryname");
        sqlQuery.addScalar("articles", IntegerType.INSTANCE);
        sqlQuery.addScalar("description");
        sqlQuery.addScalar("avatar");
        Query query = sqlQuery.setResultTransformer(Transformers.aliasToBean(CategoryVO.class));
        List list = query.list();
        return query.list();
    }

    @Override
    public CategoryVO findById(Integer id) {
        String sql = "SELECT  " +
                " mc.*, count(*) AS articles  " +
                "FROM  " +
                " me_category mc  " +
                "INNER JOIN me_article mar ON mc.id = mar.category_id  " +
                "AND mar.category_id = :id";

        SQLQuery sqlQuery = getSession().createSQLQuery(sql);
        sqlQuery.setParameter("id",Long.parseLong(String.valueOf(id)));
        sqlQuery.addScalar("id");
        sqlQuery.addScalar("categoryname");
        sqlQuery.addScalar("articles", IntegerType.INSTANCE);
        sqlQuery.addScalar("description");
        sqlQuery.addScalar("avatar");
        Query query = sqlQuery.setResultTransformer(Transformers.aliasToBean(CategoryVO.class));
        List list = query.list();
        CategoryVO categoryVO =(CategoryVO) list.get(0);
        return categoryVO;
    }

    @Override
    public List<CategoryTreeVo> findAllCateTreeVo() {
        String sql = "SELECT " +
                "mc.categoryname as categoryName, " +
                "mt.id as tagId, " +
                "mt.tagname as tagName " +
                "FROM " +
                "me_category mc, " +
                "me_tag mt, " +
                "me_category_tag mct " +
                "WHERE " +
                "mc.id = mct.category_id " +
                "AND mct.tag_id = mt.id";

        SQLQuery sqlQuery = getSession().createSQLQuery(sql);
        sqlQuery.addScalar("categoryName");
        sqlQuery.addScalar("tagId");
        sqlQuery.addScalar("tagName");
        Query query = sqlQuery.setResultTransformer(Transformers.aliasToBean(CategoryTreeVo.class));
        List list = query.list();

        return list;
    }


    private Session getSession() {
        return em.unwrap(Session.class);
    }

}

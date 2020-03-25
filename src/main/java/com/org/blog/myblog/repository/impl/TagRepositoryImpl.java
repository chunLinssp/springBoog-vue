package com.org.blog.myblog.repository.impl;

import com.org.blog.myblog.entity.Tag;
import com.org.blog.myblog.repository.wrapper.TagWrapper;
import com.org.blog.myblog.vo.TagVO;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Map;

public class TagRepositoryImpl implements TagWrapper {

    @PersistenceContext
    private EntityManager em;




    private Session getSession() {
        return em.unwrap(Session.class);
    }


    @Override
    public TagVO findTagsDetailsById(Integer id) {

        String sql = "select mt.*,count(mat.tag_id) as articles from me_tag mt LEFT JOIN me_article_tag mat on mt.id = mat.tag_id where mt.id = :tagId";

        SQLQuery sqlQuery = getSession().createSQLQuery(sql);
        sqlQuery.setParameter("tagId",id);

        sqlQuery.addScalar("id");
        sqlQuery.addScalar("tagname");
        sqlQuery.addScalar("avatar");
        sqlQuery.addScalar("articles", IntegerType.INSTANCE);
        sqlQuery.setResultTransformer(Transformers.aliasToBean(TagVO.class));
        TagVO vo = (TagVO) sqlQuery.uniqueResult();
        return vo;
    }
}

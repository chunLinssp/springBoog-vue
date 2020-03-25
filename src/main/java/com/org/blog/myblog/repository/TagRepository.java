package com.org.blog.myblog.repository;

import com.org.blog.myblog.entity.Tag;
import com.org.blog.myblog.repository.wrapper.TagWrapper;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface TagRepository extends JpaRepository<Tag,Integer>, TagWrapper {


    @Query(value = "SELECT " +
            "   mt.*, count(mat.tag_id) " +
            "FROM " +
            "   me_article_tag mat " +
            "RIGHT JOIN me_tag mt ON mat.tag_id = mt.id " +
            "GROUP BY " +
            "   mt.id " +
            "ORDER BY " +
            "count(mat.tag_id) " +
            "   DESC limit :size",nativeQuery = true)
    List<Tag> listHotTagsByAricleUse(@Param("size") int size);

    @Query(value = "SELECT " +
            "   tg.id,tg.avatar,tg.tagname,tg.num_click " +
            "FROM " +
            "me_article ma " +
            "right JOIN me_article_tag mat ON ma.id = mat.article_id " +
            "JOIN me_tag tg ON mat.tag_id = tg.id " +
            "WHERE " +
            "   ma.author_id = ?1",nativeQuery = true)
    List<Tag> findTagsById(Long id);

}

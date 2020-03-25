package com.org.blog.myblog.repository;

import com.org.blog.myblog.entity.Comment;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface CommentRepository extends JpaRepository<Comment,Integer> {


    @Query(value = "select * from me_comment where article_id = ?1 order by ?#{#pageable}",
            countQuery = "select count(*) from me_comment where article_id = ?1 order by ?#{#pageable}"
            , nativeQuery = true)
    Page<Comment> findById(Integer id, Pageable pageable);

    Comment findById(Integer id);
}

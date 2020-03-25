package com.org.blog.myblog.repository;

import com.org.blog.myblog.entity.Article;
import com.org.blog.myblog.repository.wrapper.ArticleWrapper;
import com.org.blog.myblog.vo.ArticleVo;
import com.org.blog.myblog.vo.PageVo;
import com.org.blog.myblog.vo.SelfArticleVo;
import com.org.blog.myblog.vo.SummaryVo;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface ArticleRepository extends JpaRepository<Article,Integer>, ArticleWrapper, JpaSpecificationExecutor {


    List<ArticleVo> listArchives(PageVo pageVo);

    @Query(value = "select * from me_article order by view_counts desc limit :limit",nativeQuery = true)
    List<Article> findOrderByViewsAndLimit( @Param("limit") int limit);

    @Query(value = "select * from me_article order by create_date desc limit :limit",nativeQuery = true)
    List<Article> findOrderByCreateDateAndLimit(@Param("limit")int limit);

    @Query(value = "SELECT distinct     " +
            "   ma.*, mp.avatar     " +
            "FROM     " +
            "   me_article ma     " +
            "left JOIN me_article_pic mp ON ma.id = mp.article_id     " +
            "WHERE     " +
            "   ma.author_id = :id  order by ?#{#pageable} ",
            countQuery = "SELECT     " +
                    "   count(*)     " +
                    "FROM     " +
                    "   me_article ma     " +
                    "Right  JOIN me_article_pic mp ON ma.id = mp.article_id     " +
                    "WHERE     " +
                    "   ma.author_id = :id  order by  ?#{#pageable} ",
            nativeQuery = true)
    Page<Article> findAllArticleById(@Param("id")Long id, Pageable pageable);


    @Query(value =
            "select     " +
            " ma.*,mp.avatar    " +
            "FROM    " +
            "me_article ma " +
            "Left  JOIN me_article_pic mp ON ma.id = mp.article_id    " +
            "WHERE    " +
            "ma.author_id = ?1 " +
            "AND  IF(''!= ?2, ma.title like CONCAT('%',?2,'%'),1=1) " +
            "AND IF(''!=?3,ma.create_date > ?3,1=1) " +
            "AND IF(''!=?4,ma.create_date < ?4,1=1) " +
            "order by  ?#{#pageable}",
            countQuery =
             "select  " +
             "count(*) " +
             "FROM " +
             "me_article ma " +
             "Left  JOIN me_article_pic mp ON ma.id = mp.article_id " +
             "WHERE " +
             "ma.author_id = ?1 " +
             "AND IF(''!= ?2, ma.title like CONCAT('%',?2,'%'),1=1) " +
             "AND IF(''!=?3,ma.create_date > ?3,1=1) " +
             "AND IF(''!=?4,ma.create_date < ?4,1=1)" +
             " order by ?#{#pageable}",
            nativeQuery = true)
    Page<Article> keywordSearch(Long id,String name,String preDate ,String later,Pageable pageable);

    @Transactional
    @Modifying
    @Query(value = "delete from me_article where id = ?2 and author_id = ?1",nativeQuery = true)
    void deleteOne(long parseLong, Integer id);

    @Transactional
    @Modifying
    @Query(value = "update me_article set comment_counts = comment_counts + 1 where id = ?1 ",nativeQuery = true)
    public void updateCommentCountsById(Integer id);


    @Query(value = "select * from me_article where id = ?1",nativeQuery = true)
    Article findById(Integer aId);

//    @Query(nativeQuery = true,
//    value = "SELECT " +
//            "me.id as id, " +
//            "me.create_date as createDate, " +
//            "me.summary as summary, " +
//            "me.title as title, " +
//            "me.view_counts as viewCount, " +
//            "CHAR_LENGTH(mb.content_html) as numCounts " +
//            "FROM " +
//            "me_article me, " +
//            "me_article_body mb " +
//            "WHERE " +
//            "me.id = mb.id order by ?#{#pageable}",
//    countQuery = "select count(*) from me_article me ,me_article_body mb WHERE me.id = mb.id order by ?#{#pageable}")
//    Page<SummaryVo> findAllArticleSummaryPage(Pageable pageable);

    @Query(nativeQuery = true,
    value = "SELECT " +
            " * " +
            "FROM " +
            "me_article " +
            "ORDER BY " +
            "view_counts DESC " +
            "LIMIT 5")
    List<Article> getRecommandTitle();

    @Query(nativeQuery = true,
    value = "SELECT  " +
            "*  " +
            "FROM  " +
            "me_article_tag matg,  " +
            "me_article mar  " +
            "WHERE  " +
            "matg.article_id = mar.id  " +
            "AND matg.tag_id = ?1")
    List<Article> findArticleSummaryByTagId(Integer tagId);
}

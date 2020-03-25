package com.org.blog.myblog.repository;

import com.org.blog.myblog.entity.Category;
import com.org.blog.myblog.repository.wrapper.CategoryWrapper;
import com.org.blog.myblog.vo.CategoryTreeVo;
import com.org.blog.myblog.vo.CategoryVO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category,Integer>, CategoryWrapper {


//    @Query(nativeQuery = true,
//    value = "SELECT " +
//            "mc.categoryname, " +
//            "mt.id, " +
//            "mt.tagname " +
//            "FROM " +
//            "me_category mc, " +
//            "me_tag mt, " +
//            "me_category_tag mct " +
//            "WHERE " +
//            "mc.id = mct.category_id " +
//            "AND mct.tag_id = mt.id")
//    List<CategoryTreeVo> findAllCateTreeVo();
}

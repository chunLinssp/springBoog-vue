package com.org.blog.myblog.repository.wrapper;

import com.org.blog.myblog.entity.Article;
import com.org.blog.myblog.vo.CategoryTreeVo;
import com.org.blog.myblog.vo.CategoryVO;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryWrapper {

    public List<CategoryVO> findAllDetail();

    CategoryVO findById(Integer id);

    List<CategoryTreeVo> findAllCateTreeVo();
}

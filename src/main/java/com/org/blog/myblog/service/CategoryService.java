package com.org.blog.myblog.service;

import com.org.blog.myblog.entity.Category;
import com.org.blog.myblog.vo.CategoryTreeVo;
import com.org.blog.myblog.vo.CategoryVO;

import java.util.List;

public interface CategoryService {

    public List<CategoryVO> findAllDetail();

    public List<Category> findAll();

    public CategoryVO findById(Integer id);

    public List<CategoryTreeVo> findAllCateTreeVo();
}

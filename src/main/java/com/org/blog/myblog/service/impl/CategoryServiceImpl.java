package com.org.blog.myblog.service.impl;

import com.org.blog.myblog.entity.Category;
import com.org.blog.myblog.repository.CategoryRepository;
import com.org.blog.myblog.service.CategoryService;
import com.org.blog.myblog.vo.CategoryTreeVo;
import com.org.blog.myblog.vo.CategoryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    CategoryRepository categoryRepository;

    @Override
    public List<CategoryVO> findAllDetail() {
        return categoryRepository.findAllDetail();
    }

    @Override
    public List<Category> findAll() {
        return categoryRepository.findAll();
    }

    @Override
    public CategoryVO findById(Integer id) {
        return categoryRepository.findById(id);
    }

    @Override
    public List<CategoryTreeVo> findAllCateTreeVo() {
        List<CategoryTreeVo> allCateTreeVo = categoryRepository.findAllCateTreeVo();
        return allCateTreeVo;
    }
}

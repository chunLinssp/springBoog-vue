package com.org.blog.myblog.controller;

import com.org.blog.myblog.common.annotation.LogAnnotation;
import com.org.blog.myblog.common.result.Result;
import com.org.blog.myblog.common.result.ResultApiHandler;
import com.org.blog.myblog.entity.Category;
import com.org.blog.myblog.service.CategoryService;
import com.org.blog.myblog.vo.CategoryTreeVo;
import com.org.blog.myblog.vo.CategoryVO;
import com.org.blog.myblog.vo.MapVo;
import com.org.blog.myblog.vo.RealCategoryTreeVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping(value = "/categorys")
public class CategoryController {

    @Autowired
    CategoryService categoryService;

    @GetMapping
    @LogAnnotation(module = "分类",operation = "获得全部文章分类")
    public Result findAll(){
        List<Category> all = categoryService.findAll();
        Result success = ResultApiHandler.success(all);
        return  success;
    }

    @RequestMapping("/detail")
    @LogAnnotation(module = "分类",operation = "获得分类详情")
    public Result lisCategoryDetail(){
        List<CategoryVO> categories = categoryService.findAllDetail();
        Result success = ResultApiHandler.success(categories);
        return success;
    }


    @GetMapping("/detail/{id}")
    @LogAnnotation(module = "分类",operation = "id获得分类详情")
    public Result CategoryDetailById(@PathVariable("id") Integer id){
        CategoryVO categoryVO = categoryService.findById(id);
        Result success = ResultApiHandler.success(categoryVO);
        return success;
    }

    @GetMapping("/getAllCateTreeVo")
    public Result findAllCateTreeVo(){
        List<CategoryTreeVo> allCateTreeVo = categoryService.findAllCateTreeVo();
        List<RealCategoryTreeVo> realCategoryTreeVos = loadTreeVo(allCateTreeVo);

        Result success = ResultApiHandler.success(realCategoryTreeVos);
        return success;
    }


    public List<RealCategoryTreeVo> loadTreeVo(List<CategoryTreeVo> categoryTreeVos){
        List<RealCategoryTreeVo> realCategoryTreeVos = new ArrayList<>();
        Set<String> nameSet = new HashSet<>();
        for (CategoryTreeVo categoryTreeVo : categoryTreeVos) {
            String categoryName = categoryTreeVo.getCategoryName();
            nameSet.add(categoryName);
        }
        for (String name : nameSet) {
            RealCategoryTreeVo realCategoryTreeVo = new RealCategoryTreeVo();
            List<MapVo> tagMap = new ArrayList<>();
            for (CategoryTreeVo categoryTreeVo : categoryTreeVos) {
                String categoryName = categoryTreeVo.getCategoryName();
                if(name.equals(categoryName)){
                    MapVo mapVo = new MapVo();
                    mapVo.setId(categoryTreeVo.getTagId());
                    mapVo.setName(categoryTreeVo.getTagName());
                    tagMap.add(mapVo);
                }
            }
            realCategoryTreeVo.setCategoryName(name);
            realCategoryTreeVo.setTagMap(tagMap);
            realCategoryTreeVos.add(realCategoryTreeVo);
        }
        return realCategoryTreeVos;
    }

}

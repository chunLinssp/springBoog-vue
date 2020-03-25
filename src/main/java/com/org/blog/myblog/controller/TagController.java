package com.org.blog.myblog.controller;

import com.alibaba.fastjson.support.spring.annotation.FastJsonFilter;
import com.alibaba.fastjson.support.spring.annotation.FastJsonView;
import com.org.blog.myblog.common.annotation.LogAnnotation;
import com.org.blog.myblog.common.result.Result;
import com.org.blog.myblog.common.result.ResultApiHandler;
import com.org.blog.myblog.entity.Tag;
import com.org.blog.myblog.service.TagService;
import com.org.blog.myblog.vo.TagVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/tags")
public class TagController {

    @Autowired
    TagService tagService;

    @GetMapping
    public Result findAll(){
        List<Tag> all = tagService.findAll();
        Result success = ResultApiHandler.success(all);
        return success;
    }

    @GetMapping("/hot")
    @FastJsonView(
            include = {@FastJsonFilter(clazz = Tag.class,props = {"id","avatar","tagname"})}
    )
    @LogAnnotation(module = "标签",operation = "获取最热标签")
    public Result listHotTags(){
        int size = 5;
        List<Tag> tags = tagService.listHotTags(5);
        Result success = ResultApiHandler.success(tags);
        return success;
    }

    @RequestMapping("/detail")
    @LogAnnotation(module = "标签",operation = "获取标签详情")
    public Result listDetailTags(){
        List<Tag> tags = tagService.findAll();
        Result success = ResultApiHandler.success(tags);
        return success;
    }

    @RequestMapping("/detail/{id}")
    @LogAnnotation(module = "标签",operation = "获取标签详情")
    public Result listDetailTags(@PathVariable("id") Integer id){
        TagVO tagDetails = tagService.getTagDetails(id);
        Result success = ResultApiHandler.success(tagDetails);
        return success;
    }


    @RequestMapping("/findById")
    @LogAnnotation(module = "标签",operation = "用户文章标签")
    public Result findUidTags( Integer id){
        List<Tag> tags = tagService.getTagsById(Long.parseLong(String.valueOf(id)));
        Result success = ResultApiHandler.success(tags);
        return success;
    }





}

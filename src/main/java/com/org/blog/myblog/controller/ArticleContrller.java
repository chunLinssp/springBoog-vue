package com.org.blog.myblog.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.support.spring.annotation.FastJsonFilter;
import com.alibaba.fastjson.support.spring.annotation.FastJsonView;
import com.fasterxml.jackson.annotation.JsonView;
import com.org.blog.myblog.common.annotation.LogAnnotation;
import com.org.blog.myblog.common.constant.ResultCode;
import com.org.blog.myblog.common.result.Result;
import com.org.blog.myblog.common.result.ResultApiHandler;
import com.org.blog.myblog.common.utli.LimitUtlis;
import com.org.blog.myblog.entity.*;
import com.org.blog.myblog.service.ArticleService;
import com.org.blog.myblog.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.*;
import sun.plugin2.main.server.ResultHandler;

import java.awt.print.Pageable;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/articles")
public class ArticleContrller {

    @Autowired
    private ArticleService articleService;

    @Autowired
    LimitUtlis limitUtlis;

//    @GetMapping
//    @FastJsonView(
//            exclude = {
//                    @FastJsonFilter(clazz = Article.class,props = {"body","category","comments"}),
//                    @FastJsonFilter(clazz = Tag.class,props = {"id","avatar"})},
//                include = {@FastJsonFilter(clazz = User.class,props = {"nickname"})}
//    )
//    public Result listArticles(ArticleVo articleVo, PageVo pageVo){
//        System.out.println(articleVo);
//        System.out.println(pageVo);
//        List<Article> articles = articleService.listArticle(articleVo, pageVo);
//        Result success = ResultApiHandler.success(articles);
//        return success;
//    }

    @RequestMapping("/hot")
    @FastJsonView(
            include = {@FastJsonFilter(clazz = Article.class,props = {"id","title"})}
    )
    @LogAnnotation(module = "文章",operation = "获取最热文章")
    public Result listHotArticles(){
        int size = 5;
        List<Article> articles = articleService.listHotArticles(size);
        Result success = ResultApiHandler.success(articles);
        System.out.println("111");
        return success;
    }


    @RequestMapping("/new")
    @FastJsonView(
            include = {@FastJsonFilter(clazz = Article.class,props = {"id","title"})}
    )
    @LogAnnotation(module = "文章",operation = "获取最新文章")
    public Result listNewArticles(){
        int size = 5;
        List<Article> articles = articleService.listNewArticles(size);
        Result success = ResultApiHandler.success(articles);
        return success;
    }


    @RequestMapping("/listArchives")
    @LogAnnotation(module = "文章",operation = "获取文章归档")
    public Result listArchives(PageVo pageVo){
        // 修改为 个人信息的归档信息
        // 测试先用总数据库信息
        List<ArticleVo> articles = articleService.listArchives(pageVo);
        List<Article> all = articleService.findAll();

        ObjPageVo objPageVo = new ObjPageVo();
        objPageVo.setPageTotal(all.size());
        objPageVo.setPageSize(pageVo.getPageSize());
        objPageVo.setPageNum(objPageVo.getPageNum());
        objPageVo.setData(articles);
        Result success = ResultApiHandler.success(objPageVo);
        return  success;
    }

    @RequestMapping("/view/{id}")
    @FastJsonView(
            exclude = {
                    @FastJsonFilter(clazz = Article.class, props = {"comments"}),
                    @FastJsonFilter(clazz = Tag.class, props = {"avatar"})},
            include = {@FastJsonFilter(clazz = User.class, props = {"id", "nickname", "avatar"}),
                        @FastJsonFilter(clazz = ArticleBody.class,props = {"contentHtml"})})
    @LogAnnotation(module = "文章",operation = "获取文章详情")
    public Result ArticleDetial(@PathVariable("id") Integer id){

        Article articleById = articleService.getArticleById(id);
        if(id == null){
            Result result = new Result();
            result.setResultCode(ResultCode.PARAM_IS_BLANK);
            return result;
        }
        ArticleBody body = articleById.getBody();
        String contentHtml = body.getContentHtml();

        Result success = ResultApiHandler.success(articleById);
        return success;
    }


    @GetMapping("/getAll")
    @FastJsonView(
        include = {@FastJsonFilter(clazz=Article.class,props = {"createDate","title","viewCounts","commentCounts","id","articleAvatars","tags"})})
    @LogAnnotation(module = "文章",operation = "通过id获取用户文章")
    public Result getAllArticleList(String id, PageVo pageVo){

        Integer pageSize = pageVo.getPageSize();
        Integer pageNumber = pageVo.getPageNumber();
        Sort sort = new Sort(Sort.Direction.DESC, "create_date");
        PageRequest pageable =  new PageRequest(pageNumber -1,pageSize);

        Page<Article> articles = articleService.getAllArticleById(Long.parseLong(id), pageable);
        System.out.println(articles);
        Result success = ResultApiHandler.success(articles);
        return success;
    }

    @RequestMapping("/keywordSearch")
    @LogAnnotation(module = "文章",operation = "关键字查询文章")
    public Result keywordSearch(String id,String name, PageVo pageVo,String preDate,String laterDate){

        Integer pageSize = pageVo.getPageSize();
        Integer pageNumber = pageVo.getPageNumber();
        Sort sort = new Sort(Sort.Direction.DESC, "create_date");
        PageRequest pageRequest = new PageRequest(pageNumber,pageSize,sort);
        List<Article> search = articleService.search(name, Long.parseLong(id), preDate, laterDate, pageRequest);
        int totalSize = search.size();
        List<Article> limit = limitUtlis.limit(search, pageNumber, pageSize);
        GenericsVo genericsVo = new GenericsVo();
        genericsVo.setObj(limit);
        genericsVo.setPageNum(pageNumber);
        genericsVo.setPageTotal(totalSize);
        genericsVo.setPageSize(pageSize);
        Result success = ResultApiHandler.success(genericsVo);
        return success;
    }

    @DeleteMapping("/deleteOne")
    @LogAnnotation(module = "文章",operation = "删除文章")
    public Result deleteByOne(@RequestBody Map<String,Object> map){

        Result success = ResultApiHandler.success();
//        Map<String,String> map = JSON.parseObject(data, Map.class);
        Integer uid = (Integer)map.get("uid");
        Integer articleId =(Integer) map.get("articleId");
        articleService.deleteById(Long.parseLong(String.valueOf(uid)),articleId);
        success = ResultApiHandler.success();
        return  success;
    }

    @PostMapping("/publish")
    @LogAnnotation(module = "文章",operation = "添加文章")
    public Result saveArticle(@RequestBody Article article){

//        System.out.println("11");
//        Object id = object.get("id");
//        System.out.println(id);
        Article article1 = articleService.saveArticle(article);
        Result success = ResultApiHandler.success(article1);
        return success;
    }

    @GetMapping("/getArticleSummary")
    @LogAnnotation(module = "文章",operation = "获得文章概要信息")
    public Result getArticleSummary( PageVo pageVo){

        Integer pageSize = pageVo.getPageSize();
        Integer pageNumber = pageVo.getPageNumber();
        Sort sort = new Sort(Sort.Direction.DESC,"create_date");
        PageRequest pageRequest = new PageRequest(pageNumber-1,pageSize,sort);
        List<SummaryVo> allArticle = articleService.findAllArticle(pageRequest);
        List<Article> all = articleService.findAll();
        Integer totalSize = all.size();
        ObjPageVo objPageVo = new ObjPageVo();
        objPageVo.setPageTotal(totalSize);
        objPageVo.setData(allArticle);
        objPageVo.setPageNum(pageVo.getPageNumber());
        objPageVo.setPageSize(pageVo.getPageSize());


        Result success = ResultApiHandler.success(objPageVo);
        return success;
    }

    @GetMapping("/getRecommandTitle")
    @FastJsonView(
            include = {@FastJsonFilter(clazz = Article.class,props = {"id","title"})}
    )
    public Result getRecommandTitle(){
        List<Article> recommandTitle = articleService.getRecommandTitle();
        Result success = ResultApiHandler.success(recommandTitle);
        return success;
    }



//    @FastJsonView(
//            include = {@FastJsonFilter(clazz = Article.class,props = {"id","title"})}
//    )
    @GetMapping("/getArticleSummaryByTagId/{tagId}")
    public Result getArticleSummaryByTagId(@PathVariable Integer tagId){
        List<Article> articleSummaryByTagId = articleService.getArticleSummaryByTagId(tagId);
        Integer totalSize = articleSummaryByTagId.size();

        ObjPageVo objPageVo = new ObjPageVo();
        objPageVo.setPageTotal(totalSize);
        objPageVo.setData(articleSummaryByTagId);

        Result success = ResultApiHandler.success(objPageVo);
        return success;
    }














}

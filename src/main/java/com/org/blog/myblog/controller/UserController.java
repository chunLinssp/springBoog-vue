package com.org.blog.myblog.controller;

import com.alibaba.fastjson.support.spring.annotation.FastJsonFilter;
import com.alibaba.fastjson.support.spring.annotation.FastJsonView;
import com.org.blog.myblog.common.annotation.LogAnnotation;
import com.org.blog.myblog.common.annotation.LoginRequire;
import com.org.blog.myblog.common.constant.Base;
import com.org.blog.myblog.common.constant.ResultCode;
import com.org.blog.myblog.common.result.Result;
import com.org.blog.myblog.common.result.ResultApiHandler;
import com.org.blog.myblog.entity.User;
import com.org.blog.myblog.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import sun.misc.BASE64Encoder;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@RestController
@RequestMapping(value = "/users")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/currentUser")
    @FastJsonView(
            include = {@FastJsonFilter(clazz = User.class, props = {"id", "account", "nickname", "avatar"})})
    @LogAnnotation(module = "用户", operation = "获取当前登录用户")
    @LoginRequire(enterFlag = true)
    public Result getCurrentUser(HttpServletRequest request){
        User currentUser = userService.getCurrentUser();
        Result success = ResultApiHandler.success(currentUser);
        return success;
    }

    @RequestMapping("/getCurrentUser/{id}")
    @FastJsonView(
            include = {@FastJsonFilter(clazz = User.class, props = {"id", "account", "nickname", "avatar","createDate","email","lastLogin","mobilePhoneNumber"})})
    @LogAnnotation(module = "用户", operation = "获取当前登录用户")
    @LoginRequire(enterFlag = true)
    public Result CurrentUser(@PathVariable("id") Long id, HttpServletRequest request){
        User user = userService.findById(id);
        System.out.println(user);
        Result success = ResultApiHandler.success(user);
        return success;
    }

    @PostMapping("/updateEmail")
    @LogAnnotation(module = "邮箱",operation = "更新用户邮箱")
    public Result updateEmail( String id, String mail){

        System.out.println(id);
        System.out.println(mail);
        int count = userService.updateEmailById(Long.parseLong(id), mail);
        Result result = new Result();
        if(count > 0 ){
            result = ResultApiHandler.success();
        }else{
            result.setResultCode(ResultCode.SYSTEM_INNER_ERROR);
        }
        return result;
    }

    @PostMapping("/updatePhone")
    @LogAnnotation(module = "手机",operation = "更新手机号码")
    public Result updatePhone(String id, String phone){
        int count = userService.updatePhoneById(Long.parseLong(id), phone);
        Result result = new Result();
        if(count > 0 ){
            result = ResultApiHandler.success();
        }else{
            result.setResultCode(ResultCode.SYSTEM_INNER_ERROR);
        }
        return result;
    }

    @PostMapping("/getPictureUrl")
    public Result updatePicture( MultipartFile file) {

        Result result = new Result();
        String avaterUrl = userService.getAvaterUrl(file);
        result.setResultCode(ResultCode.SUCCESS);
        result.setData(avaterUrl);
        return result;
    }




    @PostMapping("/updatePicture")
    @LogAnnotation(module = "图像",operation = "更新用户图像")
    public Result updatePicture(String id,String url ){

        Result result = new Result();
        userService.updateUserAvater(id,url);
        return result;
    }

    @PostMapping("/updateAvater")
    @LogAnnotation(module = "图像",operation = "更新用户图像")
    public Result updatePicture(String id,MultipartFile file ){

        Result result = new Result();
        String avaterUrl = userService.getAvaterUrl(file);
        int flag = userService.updateUserAvater(id, avaterUrl);
        if(flag > 0){
            result = ResultApiHandler.success();
        }else{
            result.setResultCode(ResultCode.ERROR);
        }
        return result;
    }

}

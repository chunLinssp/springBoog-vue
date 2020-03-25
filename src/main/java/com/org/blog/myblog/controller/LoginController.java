package com.org.blog.myblog.controller;


import com.org.blog.myblog.common.annotation.LogAnnotation;
import com.org.blog.myblog.common.annotation.LoginRequire;
import com.org.blog.myblog.common.constant.Base;
import com.org.blog.myblog.common.constant.ResultCode;
import com.org.blog.myblog.common.result.Result;
import com.org.blog.myblog.common.result.ResultApiHandler;
import com.org.blog.myblog.common.utli.CookieUtil;
import com.org.blog.myblog.common.utli.HttpContextUtils;
import com.org.blog.myblog.common.utli.JwtUtil;
import com.org.blog.myblog.entity.User;
import com.org.blog.myblog.oauth.OAuthSessionManager;
import com.org.blog.myblog.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@RestController
public class LoginController {

    @Autowired
    UserService userService;


    @RequestMapping("/login")
    @LoginRequire(enterFlag = true)
    public Result Login(@RequestBody User user, HttpServletRequest request, HttpServletResponse response){

        String account = user.getAccount();
        String password = user.getPassword();
        Result result = LoginRecords(account, password);
        if(result.getCode() == 0){
            String token = loadToken(account);
            request.getSession().setAttribute("token",token);
            response.setHeader("token",token);
        }
        return result;
    }

    @GetMapping("/logout")
    @LogAnnotation(module = "退出",operation = "退出登录")
    public Result Logout(){
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        Result success = ResultApiHandler.success();
        return success;
    }


    @PostMapping("/register")
    @LogAnnotation(module = "注册",operation = "注册用户")
    public Result Register(@RequestBody  User user){
        Result result = new Result();
        User userByAccount = userService.getUserByAccount(user.getAccount());
        if(userByAccount != null){
            result.setResultCode(ResultCode.USER_HAS_EXISTED);
            return result;
        }
        String account = user.getAccount();
        String password = user.getPassword();
        User user1 = userService.saveUser(user);
        if(user1 != null){
            result = LoginRecords(account, password);
        }else{
            result.setResultCode(ResultCode.USER_Register_ERROR);
        }
        return  result;
    }

    public Result LoginRecords(String account,String password){
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token =new UsernamePasswordToken(account,password);
        Result result = new Result();
        try {
            subject.login(token);
            User currentUser = userService.getUserByAccount(account);
            subject.getSession().setAttribute(Base.CURRENT_USER,currentUser);
            result.setResultCode(ResultCode.SUCCESS);
            result.simple().put(OAuthSessionManager.OAUTH_TOKEN,subject.getSession().getId());
            //没有抛异常则登录成功
        } catch ( UnknownAccountException uae ) {
            result.setResultCode(ResultCode.USER_NOT_EXIST);
        } catch ( IncorrectCredentialsException ice ) {
            System.out.println("密码错误");
            result.setResultCode(ResultCode.USER_LOGIN_ERROR);
        } catch ( LockedAccountException lae ) {
            System.out.println("用户被锁定，不能登录");
            result.setResultCode(ResultCode.USER_ACCOUNT_FORBIDDEN);
        } catch ( AuthenticationException ae ) {
            System.out.println("严重的错误");
            result.setResultCode(ResultCode.ERROR);
        }catch (Exception e){
            result.setResultCode(ResultCode.ERROR);
        }finally {
            return result;
        }
    }

    public String loadToken(String account){
        String str = "my-blog";
        Map<String, Object> objectObjectHashMap = new HashMap<>();
        String time = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
        objectObjectHashMap.put("time",time);
        objectObjectHashMap.put("account",account);
        User saltByAccount = userService.findSaltByAccount(account);
        String salt = saltByAccount.getSalt();
        String encode = JwtUtil.encode(str, objectObjectHashMap, "salt");
        return  encode;
    }



}

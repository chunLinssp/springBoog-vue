package com.org.blog.myblog.config;

import com.org.blog.myblog.common.annotation.LoginRequire;
import com.org.blog.myblog.common.utli.CookieUtil;
import com.org.blog.myblog.common.utli.JwtUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

@Component
public class AuthInterceptor extends HandlerInterceptorAdapter {


    /**
     * handle 1.登录： 存有token
     * @param request
     * @param response
     * @param handler
     * @return
     * @throws Exception
     */
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //拦截代码

        //判断被拦截的请求访问的方法注解是否需要拦截

        HandlerMethod handlerMethod = (HandlerMethod) handler;
        LoginRequire methodAnnotation = handlerMethod.getMethodAnnotation(LoginRequire.class);

        if(methodAnnotation == null){
            return true;
        }

        boolean a_login = methodAnnotation.enterFlag();
        boolean b_write = methodAnnotation.enterRequire();

        if(a_login == true || b_write == true){
            String token = CookieUtil.getCookieValue(request,"token",true);
            if(token != null){
                Map<String, Object> salt = JwtUtil.decode(token, "my-blog", "salt");
                if(salt != null){
                    String account = (String) salt.get("account");
                }
            }
        }
        return true;
    }
}

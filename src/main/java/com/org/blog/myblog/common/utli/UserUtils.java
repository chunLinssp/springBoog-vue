package com.org.blog.myblog.common.utli;

import com.org.blog.myblog.common.constant.Base;
import com.org.blog.myblog.entity.User;
import org.apache.shiro.SecurityUtils;

public class UserUtils {

    public static User getCurrentUser() {
        User user = (User) SecurityUtils.getSubject().getSession().getAttribute(Base.CURRENT_USER);
        return user;
    }
}

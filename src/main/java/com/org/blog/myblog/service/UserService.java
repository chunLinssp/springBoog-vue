package com.org.blog.myblog.service;

import com.org.blog.myblog.entity.User;
import org.springframework.web.multipart.MultipartFile;

public interface UserService {

    public User getUserByAccount(String account);

    public User getCurrentUser();

    public  User saveUser(User user);

    public User findSaltByAccount(String account);

    public User findById(Long id);

    int updateEmailById(Long id, String mail);

    int updatePhoneById(long id, String phone);

    int updateUserAvater(String id,String url);

    String getAvaterUrl(MultipartFile file);
}

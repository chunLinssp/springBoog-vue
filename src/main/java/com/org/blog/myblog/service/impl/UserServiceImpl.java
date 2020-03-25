package com.org.blog.myblog.service.impl;

import com.org.blog.myblog.common.cache.RedisManager;
import com.org.blog.myblog.common.utli.PasswordHelper;
import com.org.blog.myblog.common.utli.PmsUploadUtil;
import com.org.blog.myblog.common.utli.StringUtils;
import com.org.blog.myblog.common.utli.UserUtils;
import com.org.blog.myblog.entity.User;
import com.org.blog.myblog.repository.UserRepository;
import com.org.blog.myblog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.util.Random;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserRepository userRepository;

    @Autowired
    RedisManager redisManager;

    @Override
    public User getUserByAccount(String account) {
        return userRepository.findByAccount(account);
    }

    @Override
    public User getCurrentUser() {
        return UserUtils.getCurrentUser();
    }

    @Override
    public User saveUser(User user) {

        String newPassword = PasswordHelper.encryptPassword(user);
        int index = new Random().nextInt(6) + 1;
        String avatar = "/static/user/user_" + index + ".png";
        user.setAvatar(avatar);
        user.setPassword(newPassword);
        User s_user = userRepository.save(user);
        return s_user;
    }

    @Override
    public User findSaltByAccount(String account) {
        return userRepository.findByAccount(account);
    }

    @Override
    public User findById(Long id) {

        RedisTemplate<String, Object> redisTemplate = redisManager.getRedisTemplate();
        String key ="userId:" +Long.toString(id);
        User user =  (User) redisTemplate.opsForValue().get(key);

        if(user != null){
            return user;
        }else{
            user = userRepository.findById(id);
            redisTemplate.opsForValue().set(key,user);
        }
        return user;
    }

    @Override
    public int updateEmailById(Long id, String mail) {




        return userRepository.updateEmailById(id,mail);
    }

    @Override
    public int updatePhoneById(long id, String phone) {
        return userRepository.updatePhoneById(id,phone);
    }

    @Override
    public int updateUserAvater(String id,String url) {

        int flag = userRepository.updateAvaterById(id, url);
        return flag;
    }

    @Override
    public String getAvaterUrl(MultipartFile file) {
        String urlImg = PmsUploadUtil.uploadImage(file);
        return urlImg;
    }


}

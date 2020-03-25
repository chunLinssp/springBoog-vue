package com.org.blog.myblog.repository;

import com.org.blog.myblog.entity.User;
import com.org.blog.myblog.repository.wrapper.UserWrapper;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Integer>, UserWrapper {

    User findByAccount(String account);

    String findSaltByAccount(String account);

    User findById(Long id);


}

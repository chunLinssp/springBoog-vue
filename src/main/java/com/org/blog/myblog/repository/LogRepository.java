package com.org.blog.myblog.repository;

import com.org.blog.myblog.entity.Log;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LogRepository extends JpaRepository<Log,Integer> {


}

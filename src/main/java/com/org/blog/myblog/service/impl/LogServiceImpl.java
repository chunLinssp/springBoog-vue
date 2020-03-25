package com.org.blog.myblog.service.impl;

import com.org.blog.myblog.entity.Log;
import com.org.blog.myblog.repository.LogRepository;
import com.org.blog.myblog.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogServiceImpl implements LogService {

    @Autowired
    LogRepository logRepository;

    @Override
    public void saveLog(Log log) {
        logRepository.save(log);
    }
}

package com.org.blog.myblog.service.impl;

import com.org.blog.myblog.common.cache.RedisManager;
import com.org.blog.myblog.entity.Tag;
import com.org.blog.myblog.repository.TagRepository;
import com.org.blog.myblog.service.TagService;
import com.org.blog.myblog.vo.TagVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TagServiceImpl implements TagService {

    @Autowired
    TagRepository tagRepository;

    @Autowired
    RedisManager redisManager;

    @Override
    public List<Tag> listHotTags(int size) {
        return tagRepository.listHotTagsByAricleUse(size);
    }

    @Override
    public List<Tag> findAll() {
        RedisTemplate<String, Object> redisTemplate = redisManager.getRedisTemplate();
        String key = "tag:findAll";
        List<Tag>  tags = (List<Tag>)redisTemplate.opsForValue().get(key);
        if(tags != null){
            return tags;
        }else{
            List<Tag> ta = tagRepository.findAll();
            redisTemplate.opsForValue().set(key,ta);
            return ta;
        }
    }

    @Override
    public TagVO getTagDetails(Integer id) {
        return tagRepository.findTagsDetailsById(id);
    }

    @Override
    public List<Tag> getTagsById(Long uid) {
        return tagRepository.findTagsById(uid);
    }

    @Override
    public List<Tag> getAll() {
        return tagRepository.findAll();
    }
}

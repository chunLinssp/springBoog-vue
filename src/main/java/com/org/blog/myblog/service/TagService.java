package com.org.blog.myblog.service;

import com.org.blog.myblog.entity.Tag;
import com.org.blog.myblog.vo.TagVO;

import java.util.List;

public interface TagService {

    public List<Tag> listHotTags(int size);

    public List<Tag> findAll();

    public TagVO getTagDetails(Integer id);

    public List<Tag> getTagsById(Long uid);

    public List<Tag> getAll();
}

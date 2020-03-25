package com.org.blog.myblog.repository.wrapper;

import com.org.blog.myblog.entity.Tag;
import com.org.blog.myblog.vo.TagVO;

import java.util.List;

public interface TagWrapper {


    public TagVO findTagsDetailsById(Integer id);
}

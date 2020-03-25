package com.org.blog.myblog.vo;

import java.util.List;
import java.util.Map;

public class RealCategoryTreeVo {

    private String categoryName;
    private List<MapVo> tagMap;

    @Override
    public String toString() {
        return "RealCategoryTreeVo{" +
                "categoryName='" + categoryName + '\'' +
                ", tagMap=" + tagMap +
                '}';
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public List<MapVo> getTagMap() {
        return tagMap;
    }

    public void setTagMap(List<MapVo> tagMap) {
        this.tagMap = tagMap;
    }
}

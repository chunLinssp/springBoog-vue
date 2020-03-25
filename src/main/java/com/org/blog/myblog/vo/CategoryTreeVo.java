package com.org.blog.myblog.vo;

public class CategoryTreeVo {

    private Integer tagId;
    private String categoryName;
    private String tagName;

    @Override
    public String toString() {
        return "CategoryTreeVo{" +
                "tagId=" + tagId +
                ", categoryName='" + categoryName + '\'' +
                ", tagName='" + tagName + '\'' +
                '}';
    }

    public Integer getTagId() {
        return tagId;
    }

    public void setTagId(Integer tagId) {
        this.tagId = tagId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }
}

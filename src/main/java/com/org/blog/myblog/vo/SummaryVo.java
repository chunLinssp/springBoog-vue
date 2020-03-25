package com.org.blog.myblog.vo;

import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.org.blog.myblog.entity.Article;

import java.util.Date;

public class SummaryVo {

    private Integer id;
    private String createDate;
    private String summary;
    private String title;
    private Integer numCounts;
    private Integer viewCount;
    private String categoryName;

    @Override
    public String toString() {
        return "SummaryVo{" +
                "id=" + id +
                ", createDate=" + createDate +
                ", summary='" + summary + '\'' +
                ", title='" + title + '\'' +
                ", numCounts=" + numCounts +
                ", viewCount=" + viewCount +
                ", categoryName='" + categoryName + '\'' +
                '}';
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public Integer getViewCount() {
        return viewCount;
    }

    public void setViewCount(Integer viewCount) {
        this.viewCount = viewCount;
    }

    public Integer getNumCounts() {
        return numCounts;
    }

    public void setNumCounts(Integer numCounts) {
        this.numCounts = numCounts;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }


}

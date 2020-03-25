package com.org.blog.myblog.entity;

import com.org.blog.myblog.common.entity.BaseEntity;

import javax.persistence.*;

@Entity
@Table(name = "me_article_pic")
public class ArticleAvatar extends BaseEntity<Integer> {

    private static final long serialVersionUID = -4470360380115322283L;

    @Column(name = "article_id")
    private Integer articleId;

    @Column(name = "author_id")
    private Long authordId;

    @Column(name = "avatar")
    private String avatar;

    @Override
    public String toString() {
        return "ArticleAvatar{" +
                "articleId=" + articleId +
                ", authordId=" + authordId +
                ", avatar='" + avatar + '\'' +
                '}';
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public Long getAuthordId() {
        return authordId;
    }

    public void setAuthordId(Long authordId) {
        this.authordId = authordId;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}

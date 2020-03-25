package com.org.blog.myblog.entity;

import com.org.blog.myblog.common.entity.BaseEntity;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 文章标签
 *
 */
@Entity
@Table(name = "me_tag")
public class Tag extends BaseEntity<Integer> {

    /**
     *
     */
    private static final long serialVersionUID = 5025313969040054182L;

    @NotBlank
    private String tagname;

    @NotBlank
    private String avatar;

    private int numClick;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getNumClick() {
        return numClick;
    }

    public void setNumClick(int numClick) {
        this.numClick = numClick;
    }

    public String getTagname() {
        return tagname;
    }

    public void setTagname(String tagname) {
        this.tagname = tagname;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Override
    public String toString() {
        return "Tag{" +
                "tagname='" + tagname + '\'' +
                ", avatar='" + avatar + '\'' +
                ", numClick=" + numClick +
                '}';
    }
}

package com.org.blog.myblog.vo;

import java.util.List;

public class GenericsVo {

    Object obj;
    int pageTotal;
    int pageNum;
    int pageSize;

    @Override
    public String toString() {
        return "GenericsVo{" +
                "obj=" + obj +
                ", pageTotal=" + pageTotal +
                ", pageNum=" + pageNum +
                ", pageSize=" + pageSize +
                '}';
    }

    public Object getObj() {
        return obj;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }

    public int getPageTotal() {
        return pageTotal;
    }

    public void setPageTotal(int pageTotal) {
        this.pageTotal = pageTotal;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}

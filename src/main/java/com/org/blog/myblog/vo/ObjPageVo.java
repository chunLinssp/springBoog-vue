package com.org.blog.myblog.vo;

public class ObjPageVo {

    private Integer pageTotal;
    private Integer pageNum;
    private Integer pageSize;
    private Object data;

    @Override
    public String toString() {
        return "SummaryPageVo{" +
                "pageTotal=" + pageTotal +
                ", pageNum=" + pageNum +
                ", pageSize=" + pageSize +
                ", data=" + data +
                '}';
    }

    public Integer getPageTotal() {
        return pageTotal;
    }

    public void setPageTotal(Integer pageTotal) {
        this.pageTotal = pageTotal;
    }

    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}

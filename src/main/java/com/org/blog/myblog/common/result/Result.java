package com.org.blog.myblog.common.result;

import com.org.blog.myblog.common.constant.ResultCode;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * api 接口数据返回封装
 */

public class Result<T> implements Serializable {

    private static final long serialVersionUID = -4762928619495260423L;

    private Integer code;

    private String msg;

    private T data;

    @Override
    public String toString() {
        return "Result{" +
                "code=" + code +
                ", msg='" + msg + '\'' +
                ", data=" + data +
                '}';
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public void setResultCode(ResultCode resultCode){
        this.code = resultCode.code();
        this.msg = resultCode.message();
    }

    public Map<String,Object> simple(){
        Map<String ,Object> simple = new HashMap<>();
        this.data = (T) simple;
        return  simple;
    }

}

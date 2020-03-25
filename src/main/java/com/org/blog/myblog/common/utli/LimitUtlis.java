package com.org.blog.myblog.common.utli;

import org.springframework.stereotype.Component;

import java.util.Iterator;
import java.util.List;

@Component
public class LimitUtlis<T> {

    public List<T> limit(List<T> obj,int pageNum, int pageSize){
        int size = obj.size();
        if(pageSize > size){
            return obj;
        }else{
            int first = pageNum;
            int last;
            if(first - 1 == 0){
                last = pageSize;
            }else{
                last = (first-1) * pageSize;
            }
            Iterator<T> iterator = obj.iterator();
            int count = 1;
            while(iterator.hasNext()){
                iterator.next();
                if(first<= count && count <= pageSize){
                    count += 1;
                    continue;
                }
                iterator.remove();
            }
        }
        return obj;
    }
}

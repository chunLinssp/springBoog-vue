package com.org.blog.myblog.repository.wrapper;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

public interface UserWrapper {

    @Transactional
    @Modifying
    @Query(value = "update sys_user s set s.email = :mail where s.id = :id",nativeQuery = true)
    int updateEmailById(@Param("id")Long id,@Param("mail") String mail);

    @Transactional
    @Modifying
    @Query(value = "update sys_user s set s.mobile_phone_number = :phone where s.id = :id",nativeQuery = true)
    int updatePhoneById(@Param("id")Long id,@Param("phone") String phone);

    @Transactional
    @Modifying
    @Query(value = "update sys_user s set s.avatar = :urlImg where s.id = :id",nativeQuery = true)
    int updateAvaterById(@Param("id") String id,@Param("urlImg") String urlImg);
}

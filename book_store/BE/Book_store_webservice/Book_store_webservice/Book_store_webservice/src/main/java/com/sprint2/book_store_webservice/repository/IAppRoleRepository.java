package com.sprint2.book_store_webservice.repository;

import com.sprint2.book_store_webservice.model.AppRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface IAppRoleRepository extends JpaRepository<AppRole,Long> {

    @Query(value = "select r.id, r.role from app_role as r join account_role as ar on r.id = ar.role_id join app_user as a on a.id = ar.user_id\n" +
            "    where a.username = :username ",nativeQuery = true)
    List<AppRole> findByRoleName(@Param("username") String username);
}

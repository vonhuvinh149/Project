package com.sprint2.book_store_webservice.service;

import com.sprint2.book_store_webservice.model.AppRole;

import java.util.List;

public interface IAppRoleService {

    List<AppRole> findByRoleName(String username);
}

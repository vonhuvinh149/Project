package com.sprint2.book_store_webservice.service.impl;

import com.sprint2.book_store_webservice.model.AppRole;
import com.sprint2.book_store_webservice.repository.IAppRoleRepository;
import com.sprint2.book_store_webservice.service.IAppRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AppRoleService implements IAppRoleService {
    @Autowired
    private IAppRoleRepository iAppRoleRepository;

    @Override
    public List<AppRole> findByRoleName(String username) {
        return this.iAppRoleRepository.findByRoleName(username);
    }
}

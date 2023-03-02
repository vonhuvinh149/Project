package com.sprint2.book_store_webservice.service.impl;

import com.sprint2.book_store_webservice.model.AppUser;
import com.sprint2.book_store_webservice.repository.IUserRepository;
import com.sprint2.book_store_webservice.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService implements IUserService {

    @Autowired
    private IUserRepository iUserRepository;

    @Override
    public AppUser findByUsername(String email) {
        return iUserRepository.findByUsername(email);
    }

    @Override
    public AppUser findByEmail(String email) {
        return iUserRepository.findByEmail(email);
    }

}

package com.sprint2.book_store_webservice.service;

import com.sprint2.book_store_webservice.model.AppUser;

public interface IUserService {

    AppUser findByUsername(String email);

    AppUser findByEmail(String email);

}

package com.sprint2.book_store_webservice.model;

import java.util.ArrayList;
import java.util.List;

public class LoginResponse {

    private String token;

    private Long id;

    private String avatar ;

    private String username ;

    private String type ;

    List<String> roles = new ArrayList<>();

    public LoginResponse(String token, Long id, String avatar, String username, List<String> roles) {
        this.token = token;
        this.id = id;
        this.avatar = avatar;
        this.username = username;
        this.roles = roles;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public List<String> getRoles() {
        return roles;
    }

    public void setRoles(List<String> roles) {
        this.roles = roles;
    }
}

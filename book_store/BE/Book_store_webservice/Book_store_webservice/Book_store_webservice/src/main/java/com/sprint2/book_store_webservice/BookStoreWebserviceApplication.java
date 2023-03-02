package com.sprint2.book_store_webservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@ServletComponentScan(value="com.simple.jwt.security")
public class BookStoreWebserviceApplication {

    public static void main(String[] args) {
        SpringApplication.run(BookStoreWebserviceApplication.class, args);
    }

}

package com.sprint2.book_store_webservice.controller;


import com.sprint2.book_store_webservice.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin("*")
@RestController
@RequestMapping("/api")
public class CartController {

    @Autowired
    private ICartService iCartService;
//    @PostMapping("/user/add_to_cart")
//    public ResponseEntity<Cart> shoppingCart() {
//    }
}

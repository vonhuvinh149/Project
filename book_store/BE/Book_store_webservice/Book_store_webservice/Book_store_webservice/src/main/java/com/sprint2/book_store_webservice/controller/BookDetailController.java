package com.sprint2.book_store_webservice.controller;

import com.sprint2.book_store_webservice.model.Book;
import com.sprint2.book_store_webservice.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin("*")
@RequestMapping("/public")
public class BookDetailController {

    @Autowired
    private IBookService iBookService;

    @GetMapping("/book/{id}")
    public ResponseEntity<Book> bookDetail(@PathVariable Long id) {

        Book book = this.iBookService.findByIdBook(id);

        if (book == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(book, HttpStatus.OK);
    }
}

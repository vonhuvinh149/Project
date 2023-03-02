package com.sprint2.book_store_webservice.controller;

import com.sprint2.book_store_webservice.dto.IBookDto;
import com.sprint2.book_store_webservice.model.Book;
import com.sprint2.book_store_webservice.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@CrossOrigin("*")
@RequestMapping("/public")
public class BookRestController {

    @Autowired
    private IBookService iBookService;

    @GetMapping("/shop")
    public ResponseEntity<Page<IBookDto>> bookShop(@RequestParam Optional<String> title,
                                                   @RequestParam Optional<String> author,
                                                   @PageableDefault(size = 12) Pageable pageable) {

        String titles = title.orElse("");
        String authors = author.orElse("");

        Page<IBookDto> bookList = this.iBookService.findAllBookAndSearch(titles, authors, pageable);

        if (!bookList.hasContent()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }

        return new ResponseEntity<>(bookList, HttpStatus.OK);
    }

    @GetMapping("/list/shop")
    public ResponseEntity<List<Book>> list() {
        List<Book> bookList = this.iBookService.findAllBy();
        if (bookList.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        return new ResponseEntity<>(bookList, HttpStatus.OK);
    }

    @PatchMapping("/update/{id}")
    public ResponseEntity<Book> update(@RequestBody Book book, @PathVariable Long id) {

        book.setId(id);

        this.iBookService.update(book);

        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PostMapping("/delete/{id}")
    public ResponseEntity<Book> remove(@PathVariable Long id) {

        this.iBookService.removeBook(id);

        return new ResponseEntity<>(HttpStatus.OK);
    }


    @PostMapping("/create")
    public ResponseEntity<Book> create(@RequestBody Book book) {

        this.iBookService.save(book);

        if (book == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        return new ResponseEntity<>(HttpStatus.OK);
    }

}

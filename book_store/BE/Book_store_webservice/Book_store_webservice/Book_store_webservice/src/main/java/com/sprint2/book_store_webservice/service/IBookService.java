package com.sprint2.book_store_webservice.service;

import com.sprint2.book_store_webservice.dto.IBookDto;
import com.sprint2.book_store_webservice.model.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;


public interface IBookService {

    Page<IBookDto> findAllBookAndSearch(String title, String author, Pageable pageable);

    Book findByIdBook(Long id);

    List<Book> findAllBy();

    void  update(Book book);

    void removeBook(Long id) ;

    void  save(Book book) ;
}

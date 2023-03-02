package com.sprint2.book_store_webservice.service;

import com.sprint2.book_store_webservice.model.Book;

import java.util.HashMap;
import java.util.Map;

public interface ICartService {

    Map<Book, Integer> bookMap = new HashMap<>();
}

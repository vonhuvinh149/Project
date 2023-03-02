package com.sprint2.book_store_webservice.service.impl;

import com.sprint2.book_store_webservice.model.Book;
import com.sprint2.book_store_webservice.service.ICartService;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class CartService implements ICartService {

    Map<Book, Integer> bookMap = new HashMap<>();

    private boolean checkItemInCart(Book book) {
        for (Map.Entry<Book, Integer> entry : bookMap.entrySet()) {
            if (entry.getKey().getId().equals(book.getId())) {
                return true;
            }
        }
        return false;
    }

    private Map.Entry<Book, Integer> selectItemCart(Book book) {
        for (Map.Entry<Book, Integer> entry : bookMap.entrySet()) {
            if (entry.getKey().getId().equals(book.getId())) {
                return entry;
            }
        }
        return null;
    }

    public void deleteUnCart(Book book) {
        Map.Entry<Book, Integer> itemEntry = selectItemCart(book);
        if (itemEntry.getValue() <= 1) {
            bookMap.remove(itemEntry.getKey());
        } else {
            Integer newQuantity = itemEntry.getValue() - 1;
            bookMap.replace(itemEntry.getKey(), newQuantity);
        }
    }

    public void addToCart(Book book) {
        if (!checkItemInCart(book)) {
            bookMap.put(book, 1);
        } else {
            Map.Entry<Book, Integer> itemEntry = selectItemCart(book);
            Integer newQuantity = itemEntry.getValue() + 1;
            bookMap.replace(itemEntry.getKey(), newQuantity);
        }
    }

    public Double countTotalPayment() {

        Double payMent = 0.0;
        for (Map.Entry<Book, Integer> entry : bookMap.entrySet()) {
            payMent += entry.getKey().getPrice() * entry.getValue();
        }
        return payMent;
    }


}

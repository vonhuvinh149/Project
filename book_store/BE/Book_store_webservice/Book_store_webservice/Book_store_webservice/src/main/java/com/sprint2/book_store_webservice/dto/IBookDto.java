package com.sprint2.book_store_webservice.dto;

import com.sprint2.book_store_webservice.model.Category;

public interface IBookDto {

    Long getId();

    String getTitle();

    String getPublisher();

    Integer getTotalPages();

    Double getWidth();

    String getAuthor();

    Double getHeight();

    Double getPrice();

    String getImageUrl();

    String getSummary();

    Integer getQuantity();

    Category getCategories();

}

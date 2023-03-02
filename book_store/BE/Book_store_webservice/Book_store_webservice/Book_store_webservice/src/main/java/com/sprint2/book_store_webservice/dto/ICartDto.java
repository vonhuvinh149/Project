package com.sprint2.book_store_webservice.dto;

public interface ICartDto {

    Long getId();

    Integer getQuantityCart();

    String getTitle();

    Double getPrice();

    Integer getQuantity();

    String getImageUrl();

    Double totalPrice() ;

}

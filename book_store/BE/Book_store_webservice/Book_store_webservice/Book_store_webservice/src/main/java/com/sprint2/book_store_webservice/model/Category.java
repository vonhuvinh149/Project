package com.sprint2.book_store_webservice.model;


import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

@Getter
@Setter
@Entity
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(columnDefinition = "varchar(100)")
    private String name;

    @OneToMany(mappedBy = "categories", cascade = CascadeType.ALL)
    @JsonBackReference
    private Set<Book> books;
}

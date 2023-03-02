package com.sprint2.book_store_webservice.repository;

import com.sprint2.book_store_webservice.dto.IBookDto;
import com.sprint2.book_store_webservice.model.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Repository
public interface IBookRepository extends JpaRepository<Book, Long> {

    @Query(value = "select b.id , b.image_url as  imageUrl , b.title , b.price , b.author " +
            "from book as b " +
            "where b.title like :title " +
            "and b.author like :author ",
            countQuery = "select b.image_url as imageUrl, b.title , b.price , b.author " +
                    "from book as b " +
                    "where b.title like :title " +
                    "and b.author like :author ", nativeQuery = true)
    Page<IBookDto> findAllBookAndSearch(@Param("title") String title, @Param("author") String author, Pageable pageable);

    @Query(value = "select * " +
            "from book as b " +
            "join category as c " +
            "on b.category_id = c.id " +
            "where b.id = :id ", nativeQuery = true)
    Book findByIdBook(@Param("id") Long id);

    @Modifying
    @Query(value = "delete from book where book.id = :id", nativeQuery = true)
    void removeBook(@Param("id") Long id);

    List<Book> findAllBy();

    @Modifying
    @Query(value = "update book " +
            "set book.author = :author , book.height = :height , book.image_url = :image_url , book.price = :price , book.publisher = :publisher , book.quantity = :quantity , book.summary = :summary ,book.title = :title , book.total_pages = :total_pages , book.width =:width " +
            "where book.id = :id ", nativeQuery = true)
    void update(@Param("author") String author, @Param("height") Double height, @Param("image_url") String image_url, @Param("price") Double price, @Param("publisher") String publisher, @Param("quantity") Integer quantity, @Param("summary") String summary, @Param("total_pages") Integer total_pages, @Param("title") String title, @Param("width") Double width, @Param("id") Long id);

}
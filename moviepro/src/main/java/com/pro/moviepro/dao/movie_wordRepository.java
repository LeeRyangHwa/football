package com.pro.moviepro.dao;

import com.pro.moviepro.dto.movie_word;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface movie_wordRepository extends JpaRepository<movie_word, Integer> {
    List<movie_word> findByWord(String word);

    @Query("select d from movie_word d where d.movie_id =:movie_id" )
    List<movie_word> findByMovie_id(@Param("movie_id") Integer movie_id);
}

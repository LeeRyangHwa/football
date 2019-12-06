package com.pro.moviepro.dao;

import com.pro.moviepro.dto.Movies;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MovieRepository extends JpaRepository<Movies, Integer> {
    List<Movies> findByIdmovies(Integer idmovies);
    //List<Movies> findByMoviegroup(String moviegroup);

    @Query("select d from Movies d where d.moviegroup like %:moviegroup%" )
    List<Movies> findByMoviegroup(@Param("moviegroup") String moviegroup);

    @Query("select d from Movies d where d.title like %:title%" )
    List<Movies> findByTitle(@Param("title") String title);


}

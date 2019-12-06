package com.pro.moviepro.dao;

import com.pro.moviepro.dto.favoriteMovie;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface favoriteMovieRepository extends JpaRepository<favoriteMovie, Integer> {
    List<favoriteMovie> findBymemberid(String memberid);
    List<favoriteMovie> findByMemberidAndMovieid(String memberid, Integer movieid);
}

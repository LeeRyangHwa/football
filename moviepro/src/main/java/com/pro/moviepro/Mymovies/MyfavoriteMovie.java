package com.pro.moviepro.Mymovies;

import com.pro.moviepro.dao.MovieRepository;
import com.pro.moviepro.dao.favoriteMovieRepository;
import com.pro.moviepro.dto.Movies;
import com.pro.moviepro.dto.favoriteMovie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MyfavoriteMovie {
    @Autowired
    favoriteMovieRepository favoriteMovieRepository;
    @Autowired
    MovieRepository movieRepository;

    public List<Movies> myfavoriteMovie(String userid){
        List<favoriteMovie>favoriteMovie = favoriteMovieRepository.findBymemberid(userid);
        List<Movies> mymovie = GetmyMovie(favoriteMovie);

        return mymovie;
    }

    private List<Movies> GetmyMovie(List<favoriteMovie>favoriteMovie){
        List<Movies> mymovie = new ArrayList();
        for(favoriteMovie favoritemovieid : favoriteMovie){
            int moviedid = favoritemovieid.getMovieid();
            mymovie.add(movieRepository.findByIdmovies(moviedid).get(0));
        }

        return mymovie;
    }
}

package com.pro.moviepro.MovieMaterial;

import com.pro.moviepro.dto.Movies;
import com.pro.moviepro.dto.favoriteMovie;
import org.springframework.stereotype.Service;

import java.util.Iterator;
import java.util.List;

@Service
public class DeleteDuplicates {

    public List<Movies> DuplicatesMovies(List<Movies> moviesdata, List<Movies> favoriteMovies){
        List<Movies> movies = moviesdata;

        for(Iterator<Movies> iter = movies.iterator(); iter.hasNext();){
            Movies movie = iter.next();
            for(Movies favoriteMovie: favoriteMovies){
                if(movie.getIdmovies()==favoriteMovie.getIdmovies()){
                    iter.remove();
                }
            }
        }

        return movies;
    }


    public List<Movies> moviesList(List<Movies> moviesdata, List<favoriteMovie> favoriteMovies){
        List<Movies> movies = moviesdata;
        boolean overlapCheck;

        //중복확인 for문 이터레이터로 해결
        try{
            for(Iterator<Movies> iter = movies.iterator(); iter.hasNext();){
                Movies movie = iter.next();
                overlapCheck = false;
                overlapCheck=remevelist(favoriteMovies,movie.getIdmovies());
                if(overlapCheck){
                    iter.remove();
                }
            }
        }catch (Exception e){
            System.out.println("리스트 중복 제거 오류"+e.getMessage());
        }
        return movies;
    }

    //중복영화 제거
    private boolean remevelist(List<favoriteMovie> myMoviesList, int movieid){
        boolean check = false;
        int mymovie;
        //System.out.println("중복확인");
        try {
            for (favoriteMovie movie : myMoviesList) {
                mymovie = movie.getMovieid();
                if (movieid == mymovie) {
                    check = true;
                    //System.out.println("중복:" + movie.getMovieid());
                }
            }
        }catch (Exception e){
            System.out.println("remevelist 오류");
        }
        return check;
    }
}

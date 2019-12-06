package com.pro.moviepro.MovieType;

import com.pro.moviepro.MovieMaterial.DeduplicationMovie;
import com.pro.moviepro.dao.MovieRepository;
import com.pro.moviepro.dto.Movies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Iterator;
import java.util.List;

@Service
public class MovieExtraction {
    @Autowired
    MovieRepository movieRepository;
    @Autowired
    DeduplicationMovie deduplicationMovie;

    public Movies ExtractOperation(String type,List<Movies> mymovies){ //해당타입에 영화 가져오기
        List<Movies> movies = movieRepository.findByMoviegroup(type);
        movies = deduplicationMovie.checkmovieremove(mymovies, movies);

        Movies movie = Classification(MovieRank(movies));

        return movie;
    }


    private List<Movies> MovieRank(List<Movies> movies){ //영화 평점 7점 이상 가져오기
        List<Movies> rankmovie = movies;

        for (Iterator<Movies> iter = movies.iterator(); iter.hasNext(); ) {
            Movies movie = iter.next();
            if (movie.getAveragescore()<7.0) {
                iter.remove();
            }
        }

        return rankmovie;
    }

    private Movies Classification(List<Movies> movies){ //가장 최신 영화 가져오기
        Movies movie = null;
        String release = null;
        int tmp=0, moviedate=0;

        for(Movies tmpmovie: movies){
            moviedate = Integer.parseInt(tmpmovie.getReleasedate());
            if(moviedate>tmp){
                tmp = moviedate;
                movie = tmpmovie;
            }
        }

        return movie;
    }

}

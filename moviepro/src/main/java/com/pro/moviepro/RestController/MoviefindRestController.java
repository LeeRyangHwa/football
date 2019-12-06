package com.pro.moviepro.RestController;

import com.pro.moviepro.MovieMaterial.DeduplicationMovie;
import com.pro.moviepro.dao.MovieRepository;
import com.pro.moviepro.dto.Movies;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class MoviefindRestController {
    @Autowired
    MovieRepository movieRepository;
    @Autowired
    DeduplicationMovie deduplicationMovie;

    @RequestMapping("/movieinfofind")
    @PostMapping
    public JSONObject moviefind(@RequestBody String moviecontext){
        System.out.println("검색:"+moviecontext);

        String search = moviecontext.substring(1,moviecontext.length()-1);
        System.out.println(search);
        List<Movies> titlemovies = movieRepository.findByTitle(search);
        List<Movies> groupmovies = movieRepository.findByMoviegroup(search);

        List<Movies> movies = deduplicationMovie.checkmovie(titlemovies, groupmovies);
        System.out.println("!!!!");
        for(Movies movie:movies){
            System.out.println(movie.getTitle());
        }
        System.out.println("!!!!");

        JSONObject  movieja = new JSONObject();

        for(Movies movie:movies){
            JSONObject moviejson = new JSONObject();

            moviejson.put("title", movie.getTitle());
            moviejson.put("group", movie.getMoviegroup());
            moviejson.put("release", movie.getReleasedate());
            movieja.put(movie.getIdmovies(),moviejson);

        }

        System.out.println(movieja);

        return movieja;
    }
}

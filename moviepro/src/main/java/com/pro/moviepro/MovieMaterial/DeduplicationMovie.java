package com.pro.moviepro.MovieMaterial;

import com.pro.moviepro.dto.Movies;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class DeduplicationMovie {
    public List<Movies> checkDeduplication(List<Movies> movies, List<Movies> data) {//영화 movies에 중복있는 data영화 추출
        List<Movies> moviesList = new ArrayList();
        int check = 0;
        for (Movies movie1 : data) {
            check = 0;
            for (Movies movie2 : movies) {

                if (movie1.getIdmovies() == movie2.getIdmovies()) {
                    check = 1;
                    moviesList.add(movie1);
                    System.out.println("중복!! 제목:"+movie1.getTitle());
                }
            }
        }
        return moviesList;
    }
    public List<Movies> checkmovie(List<Movies> movies, List<Movies> data) { //영화 movies에 없는 data영화 추가
        List<Movies> moviesList = movies;
        int check = 0;
        for (Movies movie1 : data) {
            check = 0;
            for (Movies movie2 : movies) {
                if (movie1.getIdmovies() == movie2.getIdmovies()) {
                    check = 1;
                    System.out.println("중복!!");
                }
            }
            if (check == 0) {
                moviesList.add(movie1);
            }
        }

        return moviesList;
    }
    public List<Movies> checkmovieremove(List<Movies> movies, List<Movies> data) {//영화 movies에 중복없는 data영화 추출
        List<Movies> moviesList = new ArrayList();
        int check = 0;
        for (Movies movie1 : data) {
            check = 0;
            for (Movies movie2 : movies) {

                if (movie1.getIdmovies() == movie2.getIdmovies()) {
                    check = 1;
                    System.out.println("중복!!");
                }
            }
            if (check == 0) {
                moviesList.add(movie1);
            }
        }
        return moviesList;
    }

}

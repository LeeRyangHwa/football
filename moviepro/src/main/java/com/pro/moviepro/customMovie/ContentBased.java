package com.pro.moviepro.customMovie;

import com.pro.moviepro.MovieMaterial.DeduplicationMovie;
import com.pro.moviepro.MovieType.TypeRecommend;
import com.pro.moviepro.dto.Movies;
import com.pro.moviepro.keywordRecommend.KeywordRecommend;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class ContentBased {

    @Autowired
    DeduplicationMovie deduplicationMovie;
    @Autowired
    TypeRecommend typeRecommend;
    @Autowired
    KeywordRecommend keywordRecommend;
    //==================================================

    public List<Movies> recommendMovie(List<Movies> movies) {
        List<Movies> recommendMovie = new ArrayList(); //추천 영화들
        List<Movies> keywordMovies = null;
        Movies movieType = null;

        //키워드로 영화 받기
        try{
            keywordMovies = keywordRecommend.keywordMovie(movies);

        }catch (Exception e){
            System.out.println("키워드영화 가져오기 error");
        }

        //===============

        movieType = typeRecommend.Recommend(movies);// 영화타입으로 나온 최신영화 추천
        try{
            if(keywordMovies!=null) {
                for (Movies movie : keywordMovies) {
                    recommendMovie.add(movie);
                }
            }
        }catch (Exception e){
            System.out.println("키워드영화 추가 error");
        }


        if(movieType!=null) {
            recommendMovie.add(movieType);
        }
        System.out.println("======추천영화======");
        for(Movies printmovie:recommendMovie){
            System.out.println(printmovie.getTitle());
        }
        return recommendMovie;
    }

}

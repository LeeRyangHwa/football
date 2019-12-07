package com.pro.moviepro.MovieType;

import com.pro.moviepro.MovieMaterial.StrTokenizer;
import com.pro.moviepro.dao.MovieRepository;
import com.pro.moviepro.dao.favoriteMovieRepository;
import com.pro.moviepro.dto.Movies;
import com.pro.moviepro.dto.favoriteMovie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class MymovieType {
    @Autowired
    favoriteMovieRepository favoriteMovieRepository;
    @Autowired
    MovieRepository movieRepository;
    @Autowired
    StrTokenizer strTokenizer;
    @Autowired
    TypeCount typeCount;

    public HashMap<String, Integer> MytypeWord(List<Movies> movies){ //영화 타입 추출
        HashMap<String, Integer> typeWord = null; //영화타입
        String word = null;
        List<Movies> mymovie = movies;
        List<String> words = new ArrayList();

       // System.out.println("======= 영화 타입 =======");

        for(Movies movie:mymovie){
            word = movie.getMoviegroup();
            //System.out.println(word);
            words.add(word);
        }

        typeWord = movieType(words); //나의 영화 타입
       // System.out.println("======= 나의 영화 타입 =======");
        //System.out.println("type:"+typeWord);

        return typeWord;
    }

    private HashMap<String, Integer> movieType(List<String> words){ //,로 나뉘어있는 타입 토큰화
        HashMap<String, Integer> typelist = null;
        List<String> wordList = new ArrayList();
        List<String> tokenList = new ArrayList();
        //System.out.println("===== Token =====");
        for(String word: words){
            tokenList = strTokenizer.StrToken(word,",");
            for(String token : tokenList){
                wordList.add(token);
                //System.out.println(token);
            }
        }
        typelist = typeCount.bestType(wordList);

        return typelist;
    }

}

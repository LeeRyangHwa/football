package com.pro.moviepro.keywordRecommend;

import com.pro.moviepro.dao.MovieRepository;
import com.pro.moviepro.dao.movie_wordRepository;
import com.pro.moviepro.dto.Movies;
import com.pro.moviepro.dto.movie_word;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class WordincludeCheck {
    @Autowired
    movie_wordRepository movie_wordRepository;
    @Autowired
    MovieRepository movieRepository;
    public List<Movies> wordCheck(HashMap<String, Integer> wordData,List<Movies> mymovies) {
        List<String> words = new ArrayList();
        String mostKey = null;
        List<Movies> movie = null;

        while (!wordData.isEmpty()) {
            mostKey = mostCount(wordData);//가장 많이 나온 단어
            //System.out.println("단어: " + mostKey);
            words.add(mostKey);
            wordData.remove(mostKey);
        }


        movie = MovieCheck(words,mymovies);

        return movie;
    }

    private List<Movies> MovieCheck(List<String> words,List<Movies> mymovies) {
        List<Movies> movies = null;
        List<movie_word> movie_wordList = new ArrayList<>();
        List<movie_word> movie_words = null;
        for (String word : words) {
            //System.out.println("word: " + word);
            movie_words = movie_wordRepository.findByWord(word);
            for (movie_word data : movie_words) {
                if(MovieCheck(mymovies,data.getMovie_id())){
                    movie_wordList.add(data);
                }
            }
        }
        movies = bestid(movie_wordList);

        return movies;
    }

    private boolean MovieCheck(List<Movies> mymovie,int id){
        boolean check = true;
        for(Movies movies: mymovie){
            if(movies.getIdmovies() == id){
                check = false;
            }
        }
        return check;
    }
    private List<Movies> bestid(List<movie_word> ids) {
        HashMap<Integer, Integer> wordCount = new HashMap();
        List<Movies> movies = new ArrayList<>();

        for (movie_word id : ids) {
            int key = id.getMovie_id();
            if (wordCount.containsKey(key)) {
                wordCount.put(key, wordCount.get(key) + 1);
                System.out.println("중복: " + key);
            } else {
                wordCount.put(key, 1);
            }
        }

//        for (int data : wordCount.keySet()) {
//            System.out.println("key: " + data + " count: " + wordCount.get(data));
//        }

        try{
            int movieId1 = intCount(wordCount);
            System.out.println("추천 영화:" +movieId1);
            movies.add(movieRepository.findByIdmovies(movieId1).get(0));

            wordCount.remove(movieId1);
        }catch (Exception e){
            System.out.println(e);
        }

        try{
            int movieId2 = intCount(wordCount);
            System.out.println("추천 영화:" +movieId2);
            movies.add(movieRepository.findByIdmovies(movieId2).get(0));

        }catch (Exception e){
            System.out.println(e);
        }

        return movies;
    }

    //가장 count가 많은 단어추출
    private String mostCount(HashMap<String, Integer> wordData) {
        String key = null;
        int count = 0;

        for (String word : wordData.keySet()) {
            int tmpCount = wordData.get(word);
            if (tmpCount > count) {
                key = word;
                count = tmpCount;
            }
        }

        return key;
    }

    private int intCount(HashMap<Integer, Integer> wordData) {
        int key = 0;
        int count = 0;

        for (int word : wordData.keySet()) {
            int tmpCount = wordData.get(word);
            if (tmpCount > count) {
                key = word;
                count = tmpCount;
            }
        }

        return key;
    }
}

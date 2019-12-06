package com.pro.moviepro.keywordRecommend;

import com.pro.moviepro.dto.Movies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class KeywordRecommend {
    @Autowired
    keywordValue keywordValue;
    @Autowired
    WordValueCheck wordValueCheck;
    @Autowired
    WordincludeCheck wordincludeCheck;
    public List<Movies> keywordMovie(List<Movies> mymovies){
        HashMap<String, Integer> mymovieKeywords = new HashMap();
        HashMap<String, Integer> mymovieKeywords1 = new HashMap();
        mymovieKeywords = keywordValue.KeyValues(mymovies); //나의 키 추출
        mymovieKeywords1 = keywordValue.KeyValues(mymovies);

        List<Movies> movies = new ArrayList<>();
        Movies RecommendMovie1 = null;
        List<Movies> RecommendMovie2 = null;

        for(String key: mymovieKeywords.keySet()) {
            int count = mymovieKeywords.get(key);
            System.out.println("key: " + key + "   count: " + count);
        }

        try{
            int count = 0;

            System.out.println("1");
            //printkey(mymovieKeywords);
            RecommendMovie1= wordValueCheck.getmovie(mymovieKeywords,mymovies);
            if(RecommendMovie1!=null){
                movies.add(RecommendMovie1);
                count++;
                System.out.println(count+"번째 영화추천: " + RecommendMovie1.getTitle());

            }
            System.out.println("2");
            //printkey(mymovieKeywords1);
             RecommendMovie2 =wordincludeCheck.wordCheck(mymovieKeywords1, mymovies);
            for(Movies movieList:RecommendMovie2){
                if(count<2){
                    count++;
                    System.out.println(count+"번째 영화추천: " + movieList.getTitle());
                    movies.add(movieList);
                }else{
                    System.out.println("영화후보: " + movieList.getTitle());
                }
            }
            movies = movieCheck(movies);
            if(movies.size()<2){
                movies = RecommendMovie2;
            }

        }catch (Exception e){
            System.out.println("RecommendMovid Class error");
        }



        return movies;
    }
    private List<Movies> movieCheck(List<Movies> movies){
        List<Movies> movieList = movies;
        for(Movies movie: movies){
            for(Movies tmp : movies){
                if(movie.getIdmovies()==tmp.getIdmovies()){
                    movieList.remove(tmp);
                }
            }
        }
        return movieList;
    }
    private void printkey(HashMap<String, Integer> words){
        for(String key: words.keySet()) {
            int count = words.get(key);
            System.out.println("key: " + key + "   count: " + count);
        }
    }
}

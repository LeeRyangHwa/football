package com.pro.moviepro.keywordRecommend;

import com.pro.moviepro.dao.MovieRepository;
import com.pro.moviepro.dao.favoriteMovieRepository;
import com.pro.moviepro.dao.movie_wordRepository;
import com.pro.moviepro.dto.Movies;
import com.pro.moviepro.dto.favoriteMovie;
import com.pro.moviepro.dto.movie_word;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

//해당 단어의 정규화값이 높은 영화 추출 후 추천
//단어 정규화 값이 가장 높은 영화
//추출된 나의 단어를 가장 많이 포함하는 영화

@Service
public class WordValueCheck {
    @Autowired
    movie_wordRepository movie_wordRepository;
    @Autowired
    MovieRepository movieRepository;
    @Autowired
    favoriteMovieRepository favoriteMovieRepository;
    public Movies getmovie(HashMap<String, Integer> wordData,List<Movies> mymovie) {
        List<movie_word> word_movieID = new ArrayList();
        String mostKey = null;
        try {
            while (!wordData.isEmpty()) {

                mostKey = mostCount(wordData);//가장 많이 나온 단어
                System.out.println("단어: "+mostKey);
                movie_word movieData = wordsValue(mostKey); //단어의 정규화값이 가장 높은 영화

                if(movieData!=null){
                    int movieid = movieData.getMovie_id();
                    System.out.println("영화 id: " + movieid + " 값: " + movieData.getWord_value());
                    if(MovieCheck(mymovie, movieid)){
                        word_movieID.add(movieData);
                        System.out.println("추가");
                    }
                }
                wordData.remove(mostKey);
                System.out.println("제거");
            }
        } catch (Exception e) {
            System.out.println("word_movieID List추가 error");
        }


        int firstID = 0;

        for (movie_word movieid : word_movieID) {
            //System.out.println("영화id: " + movieid.getMovie_id() + "  단어: " + movieid.getWord() + "  값: " + movieid.getWord_value());
            for (movie_word resultMovieid : word_movieID) {
                if (movieid == resultMovieid) {
                    if (firstID == 0) {
                        firstID = movieid.getMovie_id();
                    }
                    //System.out.println("영화id: " + movieid.getMovie_id() + "  단어: " + movieid.getWord() + "  값: " + movieid.getWord_value());
                }
            }
        }
        Movies movie = null;
        try{
            List<Movies> movies = movieRepository.findByIdmovies(firstID);
            System.out.println("첫번째" + firstID + movies.get(0).getTitle());
            movie = movies.get(0);
        }catch (Exception e){
            System.out.println(e);
        }


        return movie;
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

    //단어의 정규화값이 가장 높은 영화찾기
    private movie_word wordsValue(String word) {
        movie_word bestMovie = null;
        List<movie_word> movie_words = movie_wordRepository.findByWord(word);
        List<Movies> movie = null;

        int tmpId = 0;
        double tmpValue = 0;

        for (movie_word data : movie_words) {
            movie = movieRepository.findByIdmovies(data.getMovie_id());
            if (movie.get(0).getAveragescore() > 7) {
                if (data.getWord_value() > tmpValue) {
                    bestMovie = data;
                    tmpValue = data.getWord_value();
                }
            }
        }

        return bestMovie;
    }


}

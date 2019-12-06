package com.pro.moviepro.Keyword;

import com.pro.moviepro.dao.movie_wordRepository;
import com.pro.moviepro.dto.Movies;
import com.pro.moviepro.dto.movie_word;
import com.pro.moviepro.keywordRecommend.keywordValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class ExtraKeyword {
    @Autowired
    movie_wordRepository movie_wordRepository;
    @Autowired
    keywordValue keywordValue;

    public List<String> wordString(Movies movies) {  //영화 입력받으면 단어 출력
        List<String> words = new ArrayList();
        List<movie_word> movie_words = movie_wordRepository.findByMovie_id(movies.getIdmovies());

        for (movie_word word : movie_words) {
            words.add(word.getWord());
        }

        return words;
    }

    public List<String> keyword_Key(List<Movies> movies) {
        List<String> word_movieID = new ArrayList();
        HashMap<String, Integer> myKey = keywordValue.KeyValues(movies);
        String mostKey = null;

        while (!myKey.isEmpty()) {
            mostKey = mostkey(myKey);//가장 많이 나온 단어
            word_movieID.add("\""+mostKey+"\"");
            myKey.remove(mostKey);
        }
        return word_movieID;
    }

    public List<Integer> keyword_value (List < Movies > movies) {
        List<Integer> word_movievalue = new ArrayList();
        HashMap<String, Integer> myKey = keywordValue.KeyValues(movies);
        int mostCount = 0;
        String mostKey = null;
        while (!myKey.isEmpty()) {
            mostCount = mostCount(myKey);//가장 많이 나온 수
            mostKey = mostkey(myKey);//가장 많이 나온 단어
            word_movievalue.add(mostCount);
            myKey.remove(mostKey);
        }
        return word_movievalue;
    }

    private String mostkey (HashMap < String, Integer > wordData){
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
    private int mostCount (HashMap < String, Integer > wordData){
        String key = null;
        int count = 0;

        for (String word : wordData.keySet()) {
            int tmpCount = wordData.get(word);
            if (tmpCount > count) {
                key = word;
                count = tmpCount;
            }
        }

        return count;
    }
}
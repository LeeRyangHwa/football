package com.pro.moviepro.keywordRecommend;

import com.pro.moviepro.dao.movie_wordRepository;
import com.pro.moviepro.dto.Movies;
import com.pro.moviepro.dto.movie_word;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@Service
public class keywordValue {
    @Autowired
    movie_wordRepository movie_wordRepository;

    public HashMap<String, Integer> KeyValues(List<Movies> mymovie){ //키 값 hashmap만들기
        HashMap<String, Integer> myKey = new HashMap();

        for(Movies movie: mymovie){
            List<movie_word> movie_words = movie_wordRepository.findByMovie_id(movie.getIdmovies());

            try {
                for(movie_word word:movie_words) {

                    if (myKey.containsKey(word.getWord())){
                        myKey.put(word.getWord(), myKey.get(word.getWord()) + 1);
                    }else{
                        myKey.put(word.getWord(),1);
                    }

                }

            }catch (Exception e){
                System.out.println("keywordValue class 키추가 error");
            }
        }

        return ExtractionKeywords(myKey);
    }

    //핵심 키워드 골라내기
    public HashMap<String, Integer> ExtractionKeywords(HashMap<String, Integer> keywords) {
        HashMap<String, Integer> myKeywords = keywords;

        //set클래스는 중복과 순서를 유지하지 않음(hashmap, treemap)
        Set MymovieKeySet = myKeywords.keySet(); // keyset은 모든 키를 가져온다
        //Iterator는 한번에 하나씩만 가져옴 hasnext로 다음에 읽을 요소가 있으면 true반환
        Iterator<String> keyWordIter = MymovieKeySet.iterator(); //하나씩 순서대로 가져오기위해

        // 개수가 1이하 삭제
        while (keyWordIter.hasNext()) {
            String key = keyWordIter.next();
            int value = myKeywords.get(key);
            if (value < 2) {
                myKeywords.remove(key);
                MymovieKeySet = myKeywords.keySet();
                keyWordIter = MymovieKeySet.iterator();
            }
        }

        return myKeywords;
    }
}

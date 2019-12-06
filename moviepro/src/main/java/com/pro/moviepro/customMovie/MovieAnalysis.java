package com.pro.moviepro.customMovie;

import com.pro.moviepro.dao.MovieRepository;
import com.pro.moviepro.dto.Movies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MovieAnalysis {
    @Autowired
    ContentBased contentBased;
    /*
    Item-based (아이템 간의 유사도를 측정)
     */

    //===========================================
    /*
    Content-based (아이템의 정보를 바탕으로 아이템의 유사도를 분석) => 형태소분석, 키워드 추출, 연관단어 검색의 과정을 거쳐 아이템을 추천하는 방식

    키워드 중복이 많은 영화
    현재 날짜 3개월 전 개봉영화 => 리뷰수가 n개 이상
    현재 날짜 3개월 이내 개봉영화 => 리뷰수 체크x, 유사그룹으로 추천
    같은 그룹의 영화 추천(ex: 액션, 공포...)
    평점 높은 영화

    ===추천되는 영화===
    키워드 중복이 가장 많은 영화 1편
    같은 그룹 1편 (최신영화 평점 높고 리뷰수 1000개 이상)
    키워드와 그룹이 같은 영화 2편 추천
    */
    public List<Movies> ContentBasedCheck(List<Movies> candidate) {

        List<Movies> candidateMovie = candidate;//비교를 위한 영화들
        List<Movies> movies = null;//유사성 높은 영화를 return

        try {
            movies = contentBased.recommendMovie(candidateMovie);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }

        return movies;
    }

    /*
        User-based (사용자간의 유사도를 계산하여 다른 사용자의 리스트를 추천) => 모든 사용자가 본 영화 목록 중 특정 사용자와 같은 영화를 본 사용자들을 유사도 점수를 바탕으로 추천
     */


}

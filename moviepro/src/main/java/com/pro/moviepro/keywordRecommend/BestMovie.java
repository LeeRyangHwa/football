package com.pro.moviepro.keywordRecommend;

import com.pro.moviepro.dto.Movies;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;


@Service
public class BestMovie {
    public Movies bestMovies(List<Movies> moviesList) {
        Movies bestmovie = null;
        moviesList = reviewsCheck(moviesList);
        bestmovie = bestMoive(moviesList);

        return bestmovie;
    }

    //최신영화 리뷰 상관 없음
    // 리뷰수 3000이상
    private List<Movies> reviewsCheck(List<Movies> movies) {
        List<Movies> moviesList = movies;
        for (Iterator<Movies> iter = moviesList.iterator(); iter.hasNext(); ) {
            Movies movie = iter.next();
            if (DataDifference(movie)) {
                if (movie.getReviewcount() < 3000) {
                    iter.remove();
                }
            }
        }

        return moviesList;
    }

    //가장 높은 점수 영화 추출
    private Movies bestMoive(List<Movies> movies) {
        Movies bestmoive=null;
        double tmp=0;
        for (Movies movie : movies) {
            if(tmp<movie.getAveragescore()){
                tmp = movie.getAveragescore();
                bestmoive = movie;
            }
        }
        return bestmoive;
    }

    //현재날짜
    private int Currentdate() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        Calendar c1 = Calendar.getInstance();
        String strToday = sdf.format(c1.getTime());

        int date = Integer.parseInt(strToday);

        return date;
    }

    private boolean DataDifference(Movies movie) {
        boolean check = false;
        int date = Currentdate();
        int releasedate;

        releasedate = Integer.parseInt(movie.getReleasedate());
        if (date - releasedate > 200) {
            check = true;
        }
        return check;
    }
}

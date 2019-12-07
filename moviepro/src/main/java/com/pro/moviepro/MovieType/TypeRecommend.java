package com.pro.moviepro.MovieType;

import com.pro.moviepro.dto.Movies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class TypeRecommend {
    @Autowired
    MymovieType mymovieType;
    @Autowired
    MovieExtraction movieExtraction;
    @Autowired
    BestType bestType;
    public Movies Recommend(List<Movies> movies){ //타입으로 영화1편 추출
        Movies Recommendmovie = null;
        System.out.println("=================");
        System.out.println("Recommend Type!!");
        HashMap<String, Integer> Mytype = mymovieType.MytypeWord(movies); // return 값 (  type: count)

        String besttype = bestType.BestType(Mytype);
        System.out.println("bestType:"+besttype);
        //System.out.println("======= 나의 영화 타입 =======");
        if(Mytype.size()>1){
            Recommendmovie = bestTypeMovie(Mytype,besttype,movies);
        }else {
            Recommendmovie = movieExtraction.ExtractOperation(besttype,movies);//추천 영화 1개 return
        }
        //System.out.println(Recommendmovie.getTitle());
        return Recommendmovie;
    }

    //가장 연관성 있는 두개의 타입영화 중 가장 최신영화 추천
    private Movies bestTypeMovie(HashMap<String, Integer>types,String besttype,List<Movies>mymovies){
        Movies bestMovie = null;

        Movies Recommendmovie1=null;
        Movies Recommendmovie2=null;
        int releseday1;
        int releseday2;

        types.remove(besttype);
        String nextType = bestType.BestType(types);
        Recommendmovie1 = movieExtraction.ExtractOperation(besttype,mymovies);
        Recommendmovie2 = movieExtraction.ExtractOperation(nextType,mymovies);


        releseday1 = Integer.parseInt(Recommendmovie1.getReleasedate());
        releseday2 = Integer.parseInt(Recommendmovie2.getReleasedate());

        if(releseday1>releseday2){
            bestMovie = Recommendmovie1;
        }else{
            bestMovie = Recommendmovie2;
        }

        return bestMovie;
    }
}

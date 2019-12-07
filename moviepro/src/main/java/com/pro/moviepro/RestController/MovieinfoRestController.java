package com.pro.moviepro.RestController;

import com.pro.moviepro.dao.favoriteMovieRepository;
import com.pro.moviepro.dto.favoriteMovie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.StringTokenizer;

@RestController
public class MovieinfoRestController {
    @Autowired
    favoriteMovieRepository favoriteMovieRepository;

    @RequestMapping("/movielikeckeck")
    @PostMapping
    public String movielike(@RequestBody String info){
        System.out.println(info);
        String userid;
        String id;

        StringTokenizer st1 = new StringTokenizer(info,"\"");
        StringTokenizer st2 = new StringTokenizer(st1.nextToken(),",");

        id = st2.nextToken();
        userid = st2.nextToken();

        int movieid = Integer.parseInt(id);
        System.out.println("확인");
        List<favoriteMovie> likeMovie = favoriteMovieRepository.findByMemberidAndMovieid(userid,movieid);


        System.out.println("likeMovie");
        if(likeMovie.size()>0){//취소버튼 눌림
            System.out.println(likeMovie.get(0).getMemberid());
            favoriteMovieRepository.delete(likeMovie.get(0));
            System.out.println("삭제");
            return "0";
        }else{
            System.out.println("likeMovie null");
            favoriteMovie favoriteMovie = new favoriteMovie();
            favoriteMovie.setMovieid(movieid);
            favoriteMovie.setMemberid(userid);
            favoriteMovieRepository.save(favoriteMovie);
            System.out.println("저장");
        }

        return "1";
    }

    private boolean userCheck(List<favoriteMovie>movies, String user){
        boolean check = false;

        return check;
    }
}

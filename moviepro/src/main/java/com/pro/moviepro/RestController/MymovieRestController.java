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
public class MymovieRestController {

    @Autowired
    favoriteMovieRepository favoriteMovieRepository;

    @RequestMapping("/RemovieMymovie")
    @PostMapping
    public String mymovieCancel(@RequestBody String myinfo){
        System.out.println(myinfo);
        if(myinfo ==null){
            System.out.println("error");
            return "error";
        }

        String userid;
        String id;

        StringTokenizer st1 = new StringTokenizer(myinfo,"\"");
        StringTokenizer st2 = new StringTokenizer(st1.nextToken(),",");

        id = st2.nextToken();
        userid = st2.nextToken();

        int movieid = Integer.parseInt(id);
        System.out.println("확인");
        List<favoriteMovie> likeMovie = favoriteMovieRepository.findByMemberidAndMovieid(userid,movieid);

        favoriteMovieRepository.delete(likeMovie.get(0));

        return "success";
    }
}

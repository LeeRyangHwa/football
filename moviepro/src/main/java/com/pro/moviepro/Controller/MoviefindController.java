package com.pro.moviepro.Controller;

import com.pro.moviepro.dao.MovieRepository;
import com.pro.moviepro.dto.Movies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MoviefindController {
    @Autowired
    MovieRepository movieRepository;

    @RequestMapping(value = "/moviefind") //영화찾기
    public String moviefind(Model model, HttpServletRequest request,
                            @RequestParam(value="search",required=false)String search) {
        //세션 가져오기
        HttpSession session = request.getSession();
        String userId = (String) session.getAttribute("user_id");
        System.out.println("home.jsp(Session): " + userId);
//=================================================================================

        if(search ==null){
            return "moviefind/moviefind";
        }
        System.out.println("검색:"+search);
        List<Movies> searchResult = movieSearch(search);
        model.addAttribute("result", searchResult);

        return "moviefind/moviefind";
    }

    private List<Movies> movieSearch(String context){
        List<Movies> movieList = null;

        movieList = movieRepository.findByTitle(context);
        if(movieList.size()>0){
            return movieList;
        }
        movieList = movieRepository.findByMoviegroup(context);
        return movieList;
    }
}

package com.pro.moviepro.Controller;

import com.pro.moviepro.MovieMaterial.DeleteDuplicates;
import com.pro.moviepro.dao.MovieRepository;
import com.pro.moviepro.dao.favoriteMovieRepository;
import com.pro.moviepro.dto.Movies;
import com.pro.moviepro.dto.favoriteMovie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class movieSetupController {
    @Autowired
    MovieRepository movieRepository;
    @Autowired
    favoriteMovieRepository favoriteMovieRepository;
    @Autowired
    DeleteDuplicates deleteDuplicates;
    @RequestMapping(value = "/mymovie/setup", method= {RequestMethod.GET, RequestMethod.POST})
    public String Moviesetup(Model model, HttpServletRequest request,
                             @RequestParam(value="movie_id",required=false)Integer movieId) {

        //-----------session-------------------------------
        HttpSession session = request.getSession();
        String userId = (String) session.getAttribute("user_id");
        System.out.println("movielist.jsp(Session): " + userId);
        //-------------------------------------------------

        //favoriteMovie 추가
        System.out.println(movieId);
        if(movieId!=null) {
            Setfavoritemovie(userId, movieId);
        }

        // ---------중복 제거 및 조회-------------------
        List<Movies> movies = movieRepository.findAll();
        List<favoriteMovie> favoriteMovies = favoriteMovieRepository.findBymemberid(userId);
        movies = deleteDuplicates.moviesList(movies,favoriteMovies);

        model.addAttribute("movielist",movies);

        return "mymovie/moviesetup";
    }

    private void Setfavoritemovie(String userid, int movieid){
        try{
            favoriteMovie movie = new favoriteMovie();
            movie.setMemberid(userid);
            movie.setMovieid(movieid);
            favoriteMovieRepository.save(movie);
        }catch (Exception e){
            System.out.println("favoriteMovie 추가오류"+e.getMessage());
        }
    }
}

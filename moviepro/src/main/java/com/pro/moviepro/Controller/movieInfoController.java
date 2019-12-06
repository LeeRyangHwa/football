package com.pro.moviepro.Controller;

import com.pro.moviepro.Crawling.MovieinfoCrawling;
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
public class movieInfoController {
    @Autowired
    MovieRepository movieRepository;
    @Autowired
    MovieinfoCrawling movieinfoCrawling;
    @Autowired
    favoriteMovieRepository favoriteMovieRepository;

    @RequestMapping(value = "/movieinfo", method= {RequestMethod.GET, RequestMethod.POST})
    public String movieInfo(Model model, HttpServletRequest request,
                            @RequestParam(value="movie_id",required=false)Integer movieId) {
        //세션 가져오기
        HttpSession session = request.getSession();
        String userId = (String) session.getAttribute("user_id");
        System.out.println("home.jsp(Session): " + userId);
//=================================================================================

        if (movieId == null){
            return "moviefind/moviefind";
        }
        List<Movies> movie = movieRepository.findByIdmovies(movieId);
        String imgsrc = movieinfoCrawling.ImgLoad(movieId);
        String summary = movieinfoCrawling.summaryLoad(movieId);

        model.addAttribute("movieinfo",movie.get(0));
        model.addAttribute("movieimg",imgsrc);
        model.addAttribute("moviesummary",summary);
        model.addAttribute("user",userId);

        if(checkmovie(userId,movie.get(0).getIdmovies())){
            model.addAttribute("movielike",1);
        }else{
            model.addAttribute("movielike",0);
        }

        return "movieinfo/movieinfo";
    }

    private boolean checkmovie(String user, int movie_id){
        boolean check = false;

        List<favoriteMovie> favoriteMovies = favoriteMovieRepository.findByMemberidAndMovieid(user,movie_id);
        if(favoriteMovies.size()>0){
            check = true;
        }

        return check;
    }
}

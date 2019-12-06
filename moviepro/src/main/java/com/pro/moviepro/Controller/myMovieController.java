package com.pro.moviepro.Controller;

import com.pro.moviepro.Crawling.MovieinfoCrawling;
import com.pro.moviepro.customMovie.MovieAnalysis;
import com.pro.moviepro.dao.MovieRepository;
import com.pro.moviepro.dao.favoriteMovieRepository;
import com.pro.moviepro.dao.movie_wordRepository;
import com.pro.moviepro.dto.Movies;
import com.pro.moviepro.dto.favoriteMovie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class myMovieController {


    @Autowired
    MovieRepository movieRepository;
    @Autowired
    favoriteMovieRepository favoriteMovieRepository;
    @Autowired
    MovieAnalysis movieAnalysis; // movieAnalysis클래스 생성자
    @Autowired
    MovieinfoCrawling movieinfoCrawling;

    @RequestMapping(value = "/mymovie")
    public String mymovie(Model model, HttpServletRequest request) {
//-----------session-------------------------------
        HttpSession session = request.getSession();
        String userId = (String) session.getAttribute("user_id");
        System.out.println("mymovie.jsp(Session): " + userId);

//-------------------------------------------------

        List<favoriteMovie> favoriteMovies = favoriteMovieRepository.findBymemberid(userId);
        List<Movies> recommendMovies = null;
        int check;
        if (favoriteMovies.size() == 0) {
            check = 0;
        } else {
            recommendMovies = movieLoad(favoriteMovies); //나의추천영화

            if (recommendMovies!=null) {
                check = 1;
                model.addAttribute("customMovie", recommendMovies); // 추천영화 애트리뷰트에 추가
            }else
                check = 0;
        }

        System.out.println("check=" + check);

        model.addAttribute("userid",userId);
        model.addAttribute("check", check);

        try{
            List<String> imgtag = imgtag(recommendMovies);
            model.addAttribute("imgtag", imgtag);
        }catch(Exception e){
            System.out.println(e);
        }


        return "/mymovie/mymovie";
    }
    private List<String> imgtag(List<Movies> movies){
        List<String> imgsrc = new ArrayList();
        for(Movies movie : movies){
            imgsrc.add(movieinfoCrawling.ImgLoad(movie.getIdmovies()));
        }

        return imgsrc;
    }
//가장 좋아하는 영화로 선택된 영화들 정보가져오기
    public List<Movies> movieLoad(List<favoriteMovie> favoriteMovies) {

        List<Movies> candidateMovies = new ArrayList();
        List<Movies> recomMovies = null;

        try {
            for (favoriteMovie favoriteMovie : favoriteMovies) {
                //System.out.println("영화정보가져오기");
                candidateMovies.add(movieLoad(favoriteMovie.getMovieid())); //내가 좋아하는영화 정보 가져와서 List추가
            }
        }catch (Exception e){
            System.out.println("movieLoad Error");
            System.out.println(e);
        }

        //===============================recomMovies 리스트에 영화들 분석하기===============================
        //candidateMovies 리스트 영화분석 함수로보내기
        recomMovies = movieAnalysis.ContentBasedCheck(candidateMovies);

        //=================================================================================================
        return recomMovies;


    }

//영화가져오기
    public Movies movieLoad(int idmovie){
        //System.out.println("가져올 영화:"+idmovie);
        List<Movies> movies = movieRepository.findByIdmovies(idmovie);
        return movies.get(0);
    }

}

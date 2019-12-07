package com.pro.moviepro.Controller;

import com.pro.moviepro.Crawling.CurrentmovieCrawling;
import com.pro.moviepro.dto.CurrentMovie;
import com.pro.moviepro.dto.MoviePoint;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.StringTokenizer;

@Controller
public class homeController {
    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
    Calendar c1 = Calendar.getInstance();
    String strToday = sdf.format(c1.getTime());

    @RequestMapping(value = "/home") //메인 화면
    public String home(Model model,HttpServletRequest request){
        //세션 가져오기
        HttpSession session = request.getSession();
        String userId = (String)session.getAttribute("user_id");
        System.out.println("home.jsp(Session): "+userId);
//=================================================================================
        //movie data crawling
        List<CurrentMovie> movieInfo = new ArrayList();
        List<CurrentMovie> movieRank = new ArrayList();
        CurrentmovieCrawling CurrentmovieCrawling = new CurrentmovieCrawling();
        try{
            movieInfo = CurrentmovieCrawling.movieinfo();
        }catch (Exception e){
            System.out.println("CurrentmovieCrawling()함수 오류");
        }
//        System.out.println("home화면!!");
        for(int i=0; i<5; i++){
            movieRank.add(movieInfo.get(i));
/*
            System.out.println("id: "+movieInfo.get(i).getId());
            System.out.println("제목: "+movieInfo.get(i).getTitle());
            System.out.println("연령: "+movieInfo.get(i).getAgeGroup());
            System.out.println("점유율: "+movieInfo.get(i).getTicketing());
            System.out.println("사진: "+movieInfo.get(i).getImg());
            System.out.println("개요: "+movieInfo.get(i).getKinds());
            System.out.println("\n");
*/
        }


        model.addAttribute("movieRank",movieRank);
//----------------------------------------------------------------------------
        List<MoviePoint> moviePointList = new ArrayList();
        moviePointList = CurrentmovieCrawling.moviePoint(strToday);
/*
        for(MoviePoint moviePoint: moviePointList){
            System.out.println(moviePoint.getTitle());
            System.out.println(moviePoint.getPoint());
            System.out.println();
        }
*/
        model.addAttribute("moviePointList",moviePointList);
        //------------------------------------------------------------------------------
        //가장 인기있는 영화
        model.addAttribute("image1",movieRank.get(0).getImg());
        model.addAttribute("imagetitle1",movieRank.get(0).getTitle());

        //인기있는 액션영화
        CurrentMovie ActionMovie = interestMovie(movieInfo,"액션");
        model.addAttribute("image2",ActionMovie.getImg());
        model.addAttribute("imagetitle2",ActionMovie.getTitle());
        //인기있는 로맨스영화
        CurrentMovie romanceMovie = interestMovie(movieInfo,"멜로/로맨스");
        model.addAttribute("image3",romanceMovie.getImg());
        model.addAttribute("imagetitle3",romanceMovie.getTitle());

        return "home/home";
    }

    private CurrentMovie interestMovie(List<CurrentMovie> currentMovies,String kinds){
        CurrentMovie interstmovie=null;
        boolean check=false;

        for(CurrentMovie movie:currentMovies){
            //System.out.println("movie:"+movie.getKinds());
            StringTokenizer tokens;
            tokens = new StringTokenizer(movie.getKinds()," ");
            for(int i=0; i<tokens.countTokens()+1;i++){
                String tmp = tokens.nextToken();
                //System.out.println("token:"+tmp);
                if(tmp.equals(kinds)){
                    check=true;
                    break;
                }else{
                    continue;
                }
            }
            if(check){
                interstmovie = movie;
                break;
            }
        }

        return interstmovie;
    }
}

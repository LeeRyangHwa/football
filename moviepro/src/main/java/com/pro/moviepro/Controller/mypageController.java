package com.pro.moviepro.Controller;

import com.pro.moviepro.Keyword.ExtraKeyword;
import com.pro.moviepro.MovieType.BestType;
import com.pro.moviepro.MovieType.MymovieType;
import com.pro.moviepro.Mymovies.MyfavoriteMovie;
import com.pro.moviepro.dao.MemberRepository;
import com.pro.moviepro.dto.Member;
import com.pro.moviepro.dto.Movies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.HashMap;
import java.util.List;

@Controller
public class mypageController {

    @Autowired
    MemberRepository memberRepository;
    @Autowired
    MyfavoriteMovie myfavoriteMovie;
    @Autowired
    MymovieType mymovieType;
    @Autowired
    BestType bestType;
    @Autowired
    ExtraKeyword extraKeyword;
    @RequestMapping(value = "/mypage") //메인 화면
    public String Mypage(Model model, HttpServletRequest request){

        //세션 가져오기
        HttpSession session = request.getSession();
        String userId = (String)session.getAttribute("user_id");
        System.out.println("home.jsp(Session): "+userId);
//=================================================================================

        try {
            model.addAttribute("user",userId);
            List<Member> memberinfo = memberRepository.findByid(userId);
            model.addAttribute("modelinfo", memberinfo.get(0));
        }catch (Exception e){
            return "login/login";
        }

        try{
            List<Movies> mymovieInfo = myfavoriteMovie.myfavoriteMovie(userId); //가장좋아하는 영화정보 리스트
            model.addAttribute("mymovieInfo",mymovieInfo);

            List<String> keyword_key = extraKeyword.keyword_Key(mymovieInfo); //키워드 추출
            model.addAttribute("keyword_key",keyword_key);

            model.addAttribute("keyword_size",keyword_key.size());

            List<Integer> keyword_value = extraKeyword.keyword_value(mymovieInfo); //키워드 값 추출
            model.addAttribute("keyword_value",keyword_value);
            model.addAttribute("bestkeyword",keyword_key.get(0));

            String bestType = mymovieType(mymovieInfo);
            model.addAttribute("bestType","\""+bestType+"\"");

            System.out.println("==================================");
            for(int i=0; i<keyword_key.size(); i++){
                System.out.println(keyword_key.get(i)+"  "+keyword_value.get(i));
            }
            System.out.println("==================================");
        }catch (Exception e){
            System.out.println(e);
        }

        return "mypage/mypage";
    }

    private String mymovieType(List<Movies> mymovieInfo){ //영화 타입 가져오기
        String type = null;
        HashMap<String, Integer> typelist = mymovieType.MytypeWord(mymovieInfo);
        type = bestType.BestType(typelist);

        return type;
    }


}

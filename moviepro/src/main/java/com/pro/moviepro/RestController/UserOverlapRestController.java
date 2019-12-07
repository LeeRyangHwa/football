package com.pro.moviepro.RestController;

import com.pro.moviepro.dao.MemberRepository;
import com.pro.moviepro.dto.Member;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserOverlapRestController {
    @Autowired
    MemberRepository memberRepository;

    @RequestMapping("/overlapCheck")
    @PostMapping
    public String overlapCheck(@RequestBody String userid){ //중복확인!!
        String result="true";

        System.out.println("overlapCheck:"+userid);

        List<Member> memberInfo=memberRepository.findByid(userid); //userid값을 보내어 select값 list형식으로 가져오기
        for(Member member:memberInfo){ //select된 값을 꺼내기
            if(userid.equals(member.getId())){
                result="false"; //중복되면 false
            }
        }

        return result;
    }

    @RequestMapping("/UserSignup") //회원가입
    @PostMapping
    public String UserSignup(@RequestBody String Userdata){
        String result="fail";

        System.out.println(Userdata);
        JSONParser parser = new JSONParser();
        JSONObject object = new JSONObject();

        try{
            object = (JSONObject) parser.parse(Userdata);
            Member member =new Member();
            member.setId((String)object.get("id"));
            member.setPass((String)object.get("pass"));
            member.setEmail((String)object.get("email"));
            member.setGender(Integer.parseInt((String)object.get("gender")));
            member.memberInfo();

            memberRepository.save(member);

            result = "success";
        }catch (Exception e){
            System.out.println("Signup error");
        }

        return result;
    }
}

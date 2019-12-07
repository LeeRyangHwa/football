package com.pro.moviepro.RestController;

import com.pro.moviepro.dao.MemberRepository;
import com.pro.moviepro.dto.Member;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
public class loginRestController {
    @Autowired
    MemberRepository memberRepository;

    @RequestMapping("/loginCheck")
    @PostMapping
    public String LoginCheck(@RequestBody String data, HttpServletRequest request) {
        String id, pass;
        String DataCheck = "fail";
        String memberdata = data.toString();
        // System.out.println("data:"+memberdata);
        JSONParser parser = new JSONParser();
        JSONObject object = new JSONObject();

        try {
            object = (JSONObject) parser.parse(memberdata);
            id = (String) object.get("id");
            pass = (String) object.get("pass");

            //System.out.println(id+", "+pass);

            if (MemberData(id, pass)) {
                HttpSession session = request.getSession(true);
                session.setAttribute("user_id", id);
                System.out.println("session value: " + session.getAttribute("user_id"));

                DataCheck = "success";
            }

        } catch (Exception e) {
            System.out.println("Login error");
        }

        return DataCheck;
    }

    public boolean MemberData(String id, String pass) {
        boolean result = false;

        //System.out.println("user-id:"+id+" user-pass:"+pass);
        List<Member> memberInfo = memberRepository.findByid(id);
        for (Member member : memberInfo) {
            //System.out.println("getid = " + member.getId()+ " getpass = " + member.getPass());
            if (id.equals(member.getId()) && pass.equals(member.getPass())) {
                result = true;
            }
        }
        return result;
    }

}

package com.pro.moviepro.Controller;

import com.pro.moviepro.dao.MovieRepository;
import com.pro.moviepro.dto.Member;
import com.pro.moviepro.dto.Movies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class indexController {

    @RequestMapping(value = "/")
    public String index(){

        return "/index";
    }
}

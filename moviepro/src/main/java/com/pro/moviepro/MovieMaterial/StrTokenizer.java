package com.pro.moviepro.MovieMaterial;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

@Service
public class StrTokenizer {

    public List<String> StrToken(String str, String msg){
        List<String> tokenList = new ArrayList();
        StringTokenizer st = new StringTokenizer(str, msg);

        while(st.hasMoreTokens()) {
            tokenList.add(st.nextToken());
        }

        return tokenList;
    }
}

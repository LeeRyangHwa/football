package com.pro.moviepro.Crawling;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.StringTokenizer;

@Service
public class MovieinfoCrawling {
    //이미지 크롤링
    public String ImgLoad(int movieid){
        String movieURL = "https://movie.naver.com/movie/bi/mi/basic.nhn?code="+movieid;
        String img = null;
        try {
            Document doc = Jsoup.connect(movieURL).get();
            Elements docimgtag = doc.body().getElementsByClass("poster");
            Elements imgtag = docimgtag.select("img").eq(1);
            img=GetImgUrl(imgtag.toString());
            //System.out.println(img);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return img;
    }
    //줄거리크롤링
    public String summaryLoad(int movieid){
        String movieURL = "https://movie.naver.com/movie/bi/mi/basic.nhn?code="+movieid;
        String context = null;
        try {
            Document doc = Jsoup.connect(movieURL).get();
            Elements doccontag = doc.body().getElementsByClass("con_tx");
            context = doccontag.text();
            if(context.length() > 500) {
                context = context.substring(0, 500) + " .......";
            }
            System.out.println(context);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return context;
    }

    private String GetImgUrl(String imgtag) {
        String img = null;
        StringTokenizer token;
        //      System.out.println("토큰시작:"+imgtag);
        try {
            token = new StringTokenizer(imgtag, "\"");
            token.nextToken();
            String imgurl = token.nextToken();
            //System.out.println(imgurl);
            token = new StringTokenizer(imgurl, "?");
            img = token.nextToken();
        } catch (Exception e) {
            System.out.println("ImgError");
        }

        return img;
    }
}

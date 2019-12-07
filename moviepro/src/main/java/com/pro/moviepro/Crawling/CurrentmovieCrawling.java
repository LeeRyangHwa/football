package com.pro.moviepro.Crawling;

import com.pro.moviepro.dto.CurrentMovie;
import com.pro.moviepro.dto.MoviePoint;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class CurrentmovieCrawling {
    public List movieinfo() {
        String movieRankURL = "https://movie.naver.com/movie/running/current.nhn";
        List movieRank = new ArrayList();
        try {
            Document doc = Jsoup.connect(movieRankURL).get();
            Elements doctitle = doc.body().getElementsByClass("tit");
            Elements docstar = doc.body().getElementsByClass("info_exp");
            Elements docinfotag = doc.body().getElementsByClass("thumb");
            Elements docKinds = doc.body().getElementsByClass("link_txt");
            //System.out.println(docKinds.toString());
            for (int i = 0; i < doctitle.size(); i++) {
                CurrentMovie movie = new CurrentMovie();
                movie.setAgeGroup(doctitle.eq(i).select("span").text());
                movie.setTitle(doctitle.eq(i).select("a").text());
                movie.setTicketing(docstar.eq(i).select("span").text());
                //GetImgUrl 함수호출!!
                movie.setImg(GetImgUrl(docinfotag.eq(i).select("img").toString()));
                movie.setId(GetMovieid(docinfotag.eq(i).select("a").toString()));
                movie.setKinds(docKinds.eq(i * 3).select("a").text());
                /*
                System.out.println("상영순위:"+(i+1)+"위");
                System.out.println("시청 연령:"+movie.getAgeGroup());
                System.out.println("제목:"+movie.getTitle());
                System.out.println("예매율:"+movie.getTicketing() + "\n");
                */
                movieRank.add(movie);
            }


        } catch (Exception e) {
            System.out.println(e.getStackTrace().toString());
        }

        return movieRank;
    }

    //img태그에서 imgURL부분 뽑아내기
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

    //tag에서 id 뽑아내기
    private int GetMovieid(String idtag) {
        String id = null, code;
        StringTokenizer token;
//        System.out.println("토큰시작:"+idtag);
        try {
            token = new StringTokenizer(idtag, "\"");
            token.nextToken();
            String idurl = token.nextToken();
            //System.out.println(idurl);
            token = new StringTokenizer(idurl, "?");
            token.nextToken();
            code = token.nextToken();
            token = new StringTokenizer(code, "=");
            token.nextToken();
            id = token.nextToken();
        } catch (Exception e) {
            System.out.println("IdError");
        }

        return Integer.parseInt(id);
    }


    public List<MoviePoint> moviePoint(String date) {
        List<MoviePoint> moviePointList = new ArrayList();
        String moviePointURL = "https://movie.naver.com/movie/sdb/rank/rmovie.nhn?sel=cur&date="+date;
        try {
            Document doc = Jsoup.connect(moviePointURL).get();
            Elements doctitle = doc.body().getElementsByClass("tit5");
            Elements docpoint = doc.body().getElementsByClass("point");
            for (int i = 0; i < 5; i++) {
                MoviePoint movie = new MoviePoint();

                movie.setTitle(doctitle.eq(i).text());
                movie.setPoint(Double.parseDouble(docpoint.eq(i).text()));
                moviePointList.add(movie);
            }
        } catch (Exception e) {
            System.out.println("moivePoint Error");
        }

        return moviePointList;
    }
}

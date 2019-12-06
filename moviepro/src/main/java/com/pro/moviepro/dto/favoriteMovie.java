package com.pro.moviepro.dto;

import javax.persistence.*;

@Entity
@Table(name = "favorite_movie")
public class favoriteMovie {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    private String memberid;
    private int movieid;

    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid;
    }

    public int getMovieid() {
        return movieid;
    }

    public void setMovieid(int movieid) {
        this.movieid = movieid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}

package com.pro.moviepro.dto;

import javax.persistence.*;

@Entity
@Table(name = "movies")
public class Movies {
    @Id
    @Column(length = 100)
    private int idmovies;
    @Column(length = 100)
    private int reviewcount;
    @Column(length = 100)
    private double Averagescore;
    @Column(length = 100)
    private String title;
    @Column(length = 100)
    private String moviegroup;
    @Column(length = 100)
    private String releasedate;


    public int getIdmovies() {
        return idmovies;
    }

    public void setIdmovies(int idmovies) {
        this.idmovies = idmovies;
    }

    public int getReviewcount() {
        return reviewcount;
    }

    public void setReviewcount(int reviewcount) {
        this.reviewcount = reviewcount;
    }

    public double getAveragescore() {
        return Averagescore;
    }

    public void setAveragescore(double averagescore) {
        Averagescore = averagescore;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMoviegroup() {
        return moviegroup;
    }

    public void setMoviegroup(String moviegroup) {
        this.moviegroup = moviegroup;
    }

    public String getReleasedate() {
        return releasedate;
    }

    public void setReleasedate(String releasedate) {
        this.releasedate = releasedate;
    }


}

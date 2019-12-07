package com.pro.moviepro.dto;

public class CurrentMovie {
    private int id;
    private String title;
    private String ageGroup;
    private String ticketing;
    private String img;
    private String kinds;

    public String getKinds() {
        return kinds;
    }

    public void setKinds(String kinds) {
        this.kinds = kinds;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title)       {
        this.title = title;
    }

    public String getAgeGroup() {
        return ageGroup;
    }

    public void setAgeGroup(String ageGroup) {
        this.ageGroup = ageGroup;
    }

    public String getTicketing() {
        return ticketing;
    }

    public void setTicketing(String ticketing) {
        this.ticketing = ticketing;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}

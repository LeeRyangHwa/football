package com.pro.moviepro.dto;

import javax.persistence.*;

@Entity
@Table(name = "movie_word")
public class movie_word {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    private int movie_id;
    private String word;
    private double word_value;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMovie_id() {
        return movie_id;
    }

    public void setMovie_id(int movie_id) {
        this.movie_id = movie_id;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }

    public double getWord_value() {
        return word_value;
    }

    public void setWord_value(double word_value) {
        this.word_value = word_value;
    }
}

package com.pro.moviepro.dto;

import javax.persistence.*;

@Entity
@Table(name = "member")
public class Member {

    @Id
    @Column(length = 100)
    private String id;

    @Column(length = 100)
    private String pass;

    @Column(length = 100)
    private String email;

    @Column(nullable = false)
    private int gender;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public void memberInfo(){
        System.out.println("id="+getId()+" pass="+getPass()+"email="+getEmail()+"Gender="+getGender());
    }
}

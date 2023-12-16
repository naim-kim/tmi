package com.example.board.vo;

import java.sql.Date;

public class User {
    private String userid;
    private String password;
    private String name;
    private Date regdate;
    private int seq;

    public String getUserid() {
        return userid;
    }
    public void setUserid(String userid) {
        this.userid = userid;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getUsername() {
        return name;
    }
    public void setUsername(String username) {
        this.name = username;
    }

    public Date getRegDate() {
        return regdate;
    }

    public void setRegDate(Date regdate) {
        this.regdate = regdate;
    }

    public int getMemberId() {
        return seq;
    }

    public void setMemberId(int seq) {
        this.seq = seq;
    }
}
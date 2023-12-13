package com.example.board;

import java.util.Date;

public class ActivityVO {
    private int seq;
    private String title;
    private String week;
    private String details;
    private Date regdate;

    public int getSeq() {
        return seq;
    }
    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {

        this.title = title;
    }

    public String getWeek() {
        return week;
    }
    public void setWeek(String week) {

        this.week = week;
    }

    public String getDetails() {
        return details;
    }
    public void setDetails(String details) {

        this.details = details;
    }

    public Date getRegdate() {

        return regdate;
    }
    public void setRegdate(Date regdate) {

        this.regdate = regdate;
    }

}

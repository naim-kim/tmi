package com.example.board;

import java.util.Date;

public class TeamMemberVO {
    private int seq;
    private String name;
    private String studentID;
    private String phonenum;
    private String major;
    private int semester;
    private String MBTI;
    private Date regdate;

    public int getSeq() {
        return seq;
    }
    public void setSeq(int seq) {
        this.seq = seq;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {

        this.name = name;
    }

    public String getStudentID() {

        return studentID;
    }
    public void setStudentID(String studentID) {

        this.studentID = studentID;
    }

    public String getPhonenum() {

        return phonenum;
    }
    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    public String getMajor() {

        return major;
    }
    public void setMajor(String content) {

        this.major = content;
    }

    public int getSemester() {
        return semester;
    }
    public void setSemester(int semester) {

        this.semester = semester;
    }

    public String getMBTI() {
        return MBTI;
    }
    public void setMBTI(String MBTI) {

        this.MBTI = MBTI;
    }

    public Date getRegdate() {

        return regdate;
    }
    public void setRegdate(Date regdate) {

        this.regdate = regdate;
    }

}

package com.example.board.vo;

import java.util.Date;

public class TeamMemberVO {
    private int seq;
    private String name;
    private String studentID;
    private String phonenum;
    private String major;
    private int semester;
private String birthday;
    private String MBTI;
private String comment;
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

    public String getBirthday() {
        return birthday;
    }
    public void setBirthday(String birthday) {

        this.birthday = birthday;
    }

    public String getMBTI() {
        return MBTI;
    }
    public void setMBTI(String MBTI) {

        this.MBTI = MBTI;
    }

    public String getComment() {
        return comment;
    }
    public void setComment(String comment) {

        this.comment = comment;
    }

    public Date getRegdate() {

        return regdate;
    }
    public void setRegdate(Date regdate) {

        this.regdate = regdate;
    }

}

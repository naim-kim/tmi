package com.example.board;

import java.util.Date;

public class TeamMemberVO {
    private int seq;
    private String picture;  // Updated attribute for the "Picture" column
    private String name;
    private String studentID;  // Updated attribute for the "StudentID" column
    private int semester;
    private Date birthday;
    private String major;
    private String MBTI;  // Added attribute for the "MBTI" column

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
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

    public int getSemester() {
        return semester;
    }

    public void setSemester(int semester) {
        this.semester = semester;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getMBTI() {
        return MBTI;
    }

    public void setMBTI(String MBTI) {
        this.MBTI = MBTI;
    }


}

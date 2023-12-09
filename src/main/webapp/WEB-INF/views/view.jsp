<jsp:useBean id="teamMemberVO" scope="request" type="com.example.board.TeamMemberVO"/>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ page import="com.example.board.TeamMemberVO" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Team Member</title>
    <link rel="stylesheet" href="css/style.css">
    <style>

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            background-color: #3498db;
            color: #fff;
            padding: 20px;
            margin: 0;
        }

        div {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
        }

        tr, td {
            padding: 10px;
        }

        input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        button {
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #2980b9;
        }

        .goback {
            background-color: #e74c3c;
            margin-left: auto;
        }

        .goback:hover {
            background-color: #c0392b;
        }

    </style>
</head>
<body>

<h1>View Team Member</h1>
<div>
    <table>
        <tr><td>이름</td><td>${teamMemberVO.name}</td></tr>
        <tr><td>학번</td><td>${teamMemberVO.studentID}</td></tr>
        <tr><td>현학기수</td><td>${teamMemberVO.semester}</td></tr>
        <tr><td>학부</td><td>${teamMemberVO.major}</td></tr>
        <tr><td>생일</td><td>${teamMemberVO.birthday}</td></tr>
        <tr><td>MBTI</td><td>${teamMemberVO.MBTI}</td></tr>
    </table>
    <button class="goback" type="button" onclick="location.href='../list'">Go Back</button>
    <button type="button" onclick="location.href='../editpost/${teamMemberVO.seq}'">Edit</button>
</div>

</body>
</html>

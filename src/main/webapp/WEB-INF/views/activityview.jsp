<jsp:useBean id="activityVO" scope="request" type="com.example.board.vo.ActivityVO"/>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Activity</title>
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
<h1>View Activity</h1>
<div>
    <table id="TMI_home">
        <tr><td>title</td><td>${activityVO.title}</td></tr>
        <tr><td>week</td><td>${activityVO.week}</td></tr>
        <tr><td>details</td><td>${activityVO.details}</td></tr>
    </table>
    <button class="goback" type="button" onclick="location.href='/tmi_war_exploded/team'">Go Back</button>
    <button type="button" onclick="location.href='../activityedit/${activityVO.seq}'">Edit</button>
</div>
</body>
</html>

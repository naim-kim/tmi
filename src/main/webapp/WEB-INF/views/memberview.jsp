<jsp:useBean id="boardVO" scope="request" type="com.example.board.TeamMemberVO"/>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
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
    <script>
        function confirmDelete() {
            var isConfirmed = confirm("Are you sure you want to delete?");
            if (isConfirmed) {
                location.href = '../memberdelete/${boardVO.seq}';
            }
        }
    </script>
</head>
<body>
<h1>View Board</h1>
<div>
    <table>
        <tr><td>이름</td><td>${boardVO.name}</td></tr>
        <tr><td>학번</td><td>${boardVO.studentID}</td></tr>
        <tr><td>연락쳐</td><td>${boardVO.phonenum}</td></tr>
        <tr><td>학부</td><td>${boardVO.major}</td></tr>
        <tr><td>semester</td><td>${boardVO.semester}</td></tr>
        <tr><td>MBTI</td><td>${boardVO.MBTI}</td></tr>
    </table>
    <button class="goback" type="button" onclick="location.href='../memberslist'">Go Back</button>
    <button type="button" onclick="location.href='../memberedit/${boardVO.seq}'">Edit</button>
    <button type="button" onclick="confirmDelete()">Delete</button>
</div>

</body>
</html>

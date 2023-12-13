<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Team Member</title>
    <style>>

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

        form {
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

        button[type="button"] {
            background-color: #e74c3c;
            margin-left: auto;
        }

        button[type="button"]:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>


<h1>Add New Post</h1>
<form action="addok" method="post">
    <table id="edit">
        <tr><td>이름:</td><td>
            <label>
            <input type="text" name="name" required/>
        </label></td></tr>
        <tr><td>학번:</td><td>
            <label>
            <input type="text" name="studentID" required/>
        </label></td></tr>
        <tr><td>연락처:</td><td>
            <label>
            <input type="text" name="phonenum" required/>
        </label></td></tr>
        <tr><td>학부:</td><td>
            <label>
            <input type="text" name="major" required/>
        </label></td></tr>
        <tr><td>semester:</td><td>
            <label>
            <input type="range" name="semester" min="1" required/>
        </label></td></tr>
        <tr><td>MBTI:</td><td>
            <label>
                <select id="mbti" name="MBTI" required>
                    <option value="ISTJ">ISTJ</option>
                    <option value="ISFJ">ISFJ</option>
                    <option value="INFJ">INFJ</option>
                    <option value="INTJ">INTJ</option>
                    <option value="ISTP">ISTP</option>
                    <option value="ISFP">ISFP</option>
                    <option value="INFP">INFP</option>
                    <option value="INTP">INTP</option>
                    <option value="ESTP">ESTP</option>
                    <option value="ESFP">ESFP</option>
                    <option value="ENFP">ENFP</option>
                    <option value="ENTP">ENTP</option>
                    <option value="ESTJ">ESTJ</option>
                    <option value="ESFJ">ESFJ</option>
                    <option value="ENFJ">ENFJ</option>
                    <option value="ENTJ">ENTJ</option>
                </select>
        </label></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">Go Back</button>
    <button type="submit">Add</button>
</form>

</body>
</html>

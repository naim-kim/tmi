<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


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
            width: 70%;
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

<form action="activityaddok" method="post">
    <table id="edit">
        <tr><td>title:</td><td>
            <label>
            <input type="text" name="title" required/>
        </label></td></tr>
        <tr><td>week:</td><td>
            <label>
            <input type="text" name="week" required/>
        </label></td></tr>
        <tr><td>details:</td><td>
            <label>
            <input type="text" name="details" required/>
        </label></td></tr>
    </table>
    <button type="button" onclick="location.href='../'">Go Back</button>
    <button type="submit">Add</button>
</form>

</body>
</html>

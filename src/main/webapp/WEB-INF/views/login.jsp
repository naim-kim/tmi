<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        body {
            font-family: 'SamlipBasic', sans-serif;
            background-color: #f0f0f0;
            text-align: center;
        }

        header {
            background-color: #98cfe9;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        form {
            width: 60%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #54b0be;
            color: #ffffff;
            text-decoration: none;
            border: none;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #3a5867;
            color: #fff;
        }
        label {
            display: inline-block;
            margin-bottom: 10px; /* Add space between labels */
        }
        input {
            width: calc(60% - 12px);
            padding: 8px;
            margin-bottom: 10px;
        }
        img {
            display: block;
            margin: 0 auto 20px; /* Add space below the image */
            width: 100px; /* Set the width of the image */
            height: auto; /* Maintain aspect ratio */
        }
    </style>
</head>
<body>
<header>
    <h1 class="home-title">TMI (팀 모임은 이거지)</h1>

</header>
<div>
    <form method="post" action="loginOk">
        <div><img src="path/to/your/image.jpg" alt="Image Description"></div>
        <div><label> User ID: </label><label>
            <input type='text' name='userid' />
        </label></div>
        <div><label> Password: </label><label>
            <input type='password' name='password' />
        </label></div>
        <button type='submit'>login</button>
    </form>
</div>
</body>
</html>
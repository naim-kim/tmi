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
            margin-bottom: 10px;
            text-align: left;
        }
        input {
            width: calc(60% - 12px);
            padding: 8px;
            margin-bottom: 10px;
        }
        img {
            display: block;
            margin: 0 auto 20px;
            width: 50%;
            min-width: 200px;
            height: auto;
        }
    </style>
</head>
<body>
<header>
    <h1 class="home-title">TMI (팀 모임은 이거지)</h1>

</header>
<div>
    <form method="post" action="loginOk">
        <div><img src="https://img.freepik.com/free-vector/welcome-concept-illustration_114360-22393.jpg?w=996&t=st=1702732168~exp=1702732768~hmac=a78056e51d9332403db49fcc06c5bb23f48fec119d9f6f7cf93aabf9fefceab5" alt="Welcome page"></div>
        <table>
            <tr><td>User ID:</td><td><label>
            <input type='text' name='userid' />
        </label></td></tr>
            <tr><td>Password:</td><td><label>
            <input type='password' name='password' />
            </label></td></tr>
        </table>
        <button type='submit'>login</button>
    </form>
</div>
</body>
</html>
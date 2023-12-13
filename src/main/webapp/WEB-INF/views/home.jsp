<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        body, h1, h3, p {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            color: #333;
            padding: 50px;
        }

        h1 {
            color: #0066cc;
            font-size: 36px;
        }

        a.button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #990000;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a.button:hover {
            background-color: #cc0000;
        }
    </style>
</head>
<body>
    <h1>ㅇㅇㅇ팀!</h1>
    <p>현재 시각: [ ${serverTime} ]</p>
    <br>
    <h3></h3>
    <br>
    <p>
        <button class="button" onclick="location.href='board/list'"> 팀 명단 확인하러가기 </button>
    </p>
	<br><br>

<br/>
</body>
</html>

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
<form action="memberaddok" method="post">
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
            <input type="tel" name="phonenum" pattern="010[0-9]{8}" required/>
        </label></td></tr>
        <tr>
            <td>학부:</td>
            <td> <br>
                <label><input type="radio" name="major" value="글로벌리더쉽" required> 글로벌리더쉽</label>
                <br>
                <label><input type="radio" name="major" value="국제어문" required> 국제어문</label>
                <br>
                <label><input type="radio" name="major" value="경영경제" required> 경영경제</label>
                <br>
                <label><input type="radio" name="major" value="법학부" required> 법학부</label>
            </td>
            <td>
                <label><input type="radio" name="major" value="커뮤니케이션" required> 커뮤니케이션</label>
                <br>
                <label><input type="radio" name="major" value="상담복지" required> 상담복지</label>
                <br>
                <label><input type="radio" name="major" value="생명과학" required> 생명과학</label>
                <br>
                <label><input type="radio" name="major" value="공간환경시스템" required> 공간환경시스템</label>
            </td>
            <td>
                <label><input type="radio" name="major" value="전산전자" required> 전산전자</label>
                <br>
                <label><input type="radio" name="major" value="콘텐츠융합디자인" required> 콘텐츠융합디자인</label>
                <br>
                <label><input type="radio" name="major" value="기계제어" required> 기계제어</label>
                <br>
                <label><input type="radio" name="major" value="ICT창업학부" required> ICT창업학부</label>
            </td>
        </tr>
        <tr><td>semester:</td><td>
            <label>
            <input type="number" name="semester" min="1" required/>
        </label></td></tr>
        <tr><td>birthday:</td><td>
            <label>
                <input type="date" name="birthday" required/>
            </label></td></tr>
        <tr><td>MBTI:</td><td>
            <label>
                <input list="mbtiOptions" name="mbti" required>
                <datalist id="mbtiOptions">
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
                </datalist>
            </label></td></tr>
        <tr>
            <td>comment:</td>
            <td>
                <label>
                    <textarea name="comment" required></textarea>
                </label>
            </td>
        </tr>

    </table>
    <button type="button" onclick="location.href='memberslist'">Go Back</button>
    <button type="submit">Add</button>
</form>

</body>
</html>

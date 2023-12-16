<%@ page contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Form</title>
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
			width: 70%;
			margin: 20px auto;
			background-color: #fff;
			padding: 20px;
			border-radius: 5px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			display: flex;
			flex-direction: column;
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
			margin: 5px;
		}

		button:hover {
			background-color: #2980b9;
		}
		.goback {
			background-color: #e74c3c;
		}

		.goback:hover {
			background-color: #c0392b;
		}

		.edit-button {
			background-color: #3498db;
			color: #fff;
			border: none;
			padding: 10px 20px;
			cursor: pointer;
			border-radius: 5px;
			margin-left: 10px;
		}

		.edit-button:hover {
			background-color: #2980b9;
		}
	</style>
</head>
<body>
<h1>Edit Form</h1>

<%--@elvariable id="boardVO" type=""--%>
<div>
	<form:form modelAttribute="boardVO" method="POST" action="../membereditok">
		<form:hidden path="seq"/>
		<table id="edit">
			<tr><td>이름:</td><td><form:input path="name" /></td></tr>
			<tr><td>학번:</td><td><form:input path="studentID" /></td></tr>
			<tr><td>연락처:</td><td><form:input path="phonenum" /></td></tr>
			<tr>
				<td>학부:</td>
				<td>
					<label>
						<form:radiobutton path="major" value="글로벌리더쉽" label="글로벌리더쉽" required="true"/>
					</label>
					<br>
					<label>
						<form:radiobutton path="major" value="국제어문" label="국제어문" required="true"/>
					</label>
					<br>
					<label>
						<form:radiobutton path="major" value="경영경제" label="경영경제" required="true"/>
					</label>
					<br>
					<label>
						<form:radiobutton path="major" value="법학부" label="법학부" required="true"/>
					</label>
				</td>
				<td>
					<label>
						<form:radiobutton path="major" value="커뮤니케이션" label="커뮤니케이션" required="true"/>
					</label>
					<br>
					<label>
						<form:radiobutton path="major" value="상담복지" label="상담복지" required="true"/>
					</label>
					<br>
					<label>
						<form:radiobutton path="major" value="생명과학" label="생명과학" required="true"/>
					</label>
					<br>
					<label>
						<form:radiobutton path="major" value="공간환경시스템" label="공간환경시스템" required="true"/>
					</label>
				</td>
				<td>
					<label>
						<form:radiobutton path="major" value="전산전자" label="전산전자" required="true"/>
					</label>
					<br>
					<label>
						<form:radiobutton path="major" value="콘텐츠융합디자인" label="콘텐츠융합디자인" required="true"/>
					</label>
					<br>
					<label>
						<form:radiobutton path="major" value="기계제어" label="기계제어" required="true"/>
					</label>
					<br>
					<label>
						<form:radiobutton path="major" value="ICT창업학부" label="ICT창업학부" required="true"/>
					</label>
				</td>
			</tr>

			<tr><td>semester:</td><td><form:input path="semester" /></td></tr>
			<tr>
				<td>birthday:</td>
				<td><label><form:input type="date" path="birthday" required="true" /></label></td>
			</tr>
			<tr><td>MBTI:</td><td>
			<label>
				<form:input path="mbti" list="mbtiOptions" required="true"/>
			</label>
				<datalist id="mbtiOptions">
					<option value="ISTJ"></option>
					<option value="ISFJ"></option>
					<option value="INFJ"></option>
					<option value="INTJ"></option>
					<option value="ISTP"></option>
					<option value="ISFP"></option>
					<option value="INFP"></option>
					<option value="INTP"></option>
					<option value="ESTP"></option>
					<option value="ESFP"></option>
					<option value="ENFP"></option>
					<option value="ENTP"></option>
					<option value="ESTJ"></option>
					<option value="ESFJ"></option>
					<option value="ENFJ"></option>
					<option value="ENTJ"></option>
				</datalist>
			</td></tr>
			<tr>
				<td>comment:</td>
				<td>
					<label>
						<form:input type="text" path="comment" required="true" />
					</label>
				</td>
			</tr>

		</table>
		<button class="goback" type="button" onclick=history.back()>Go Back</button>
		<button class="edit-button" type="submit">Edit</button>
		</form:form>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
button {
	background-color: #3498db;
	color: #fff;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
	border-radius: 5px;
	margin-top: 10px;
	margin-bottom: 10px;
}
/* profiles list */
.profile-grid {
	height: 90%;
	display: grid;
	grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
	gap: 30px;
	padding-top: 10px;
}

.profile-items {
	margin: 0;
	width: 200px;
	height: 200px;
	box-sizing: border-box;
	text-align: center;
	position: relative;
}

.profile-items img {
	object-fit: cover;
	width: 200px;
	height: 200px;
	border-radius: 50%;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.overlay {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	height: 100%;
	width: 100%;
	border-radius: 50%;
	opacity: 0;
	transition: opacity 0.3s ease;
	background: rgba(0, 0, 0, 0.5);
}

.profile-title {
	color: white;
	width: 100%;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
}

.profile-items:hover .overlay {
	opacity: 1;
	transition: opacity 0.3s ease;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='delete/' + id;
	}
</script>
</head>
<body>
<h1>동아리원 명단: </h1>
<button type="button" onclick="location.href='add'">Add</button>

<%--
	<table id="list" width="90%">
<tr>
	<th>ID</th>
	<th>이름</th>
	<th>학번</th>
	<th>연락처</th>
	<th>학부</th>
	<th>입력날짜</th>
	<th>View</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u" varStatus="status">
	<tr>
		<td>${status.index+1}</td>
		<td>${u.name}</td>
		<td>${u.studentnum}</td>
		<td>${u.phonenum}</td>
		<td>${u.major}</td>
		<td>${u.regdate}</td>
		<td><a href="view/${u.seq}">View</a></td>
		<td><a href="editpost/${u.seq}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/>
--%>
<div class="profile-grid">

	<c:forEach items="${list}" var="u" varStatus="loop">
		<div class="profile-items">
			<a href="view/${u.seq}">
				<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Windows_10_Default_Profile_Picture.svg/512px-Windows_10_Default_Profile_Picture.svg.png?20221210150350" alt="My Profile Pic">
				<div class="overlay">
					<div class="profile-title">${u.name}</div>
				</div>
			</a>
		</div>
	</c:forEach>
</div>
</body>
</html>
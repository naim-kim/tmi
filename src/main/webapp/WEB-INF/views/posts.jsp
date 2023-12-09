<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.example.board.TeamMemberDAO, com.example.board.TeamMemberVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8"><title>Main Page</title>s
	<link rel="stylesheet" type="text/css" href="css/style.css">
<style>
	/* style.css */
	@font-face {
		font-family: 'SamlipOutline';
		src: url('fonts/SDSamliphopangcheOutline.otf') format('opentype');
	}

	@font-face {
		font-family: 'SamlipBasic';
		src: url('fonts/SDSamliphopangcheBasic.otf') format('opentype');
	}

	/* Global Styles */
	body, h1, h2, p {
		margin: 0;
		padding: 0;
	}

	body {
		font-family: 'SamlipBasic', sans-serif;
		background-color: #f0f0f0;
		text-align: center;

	}

	header {
		background-color: #98cfe9;
		color: #fff;
		text-align: left;
		padding: 20px;
	}

	.page-title, .home-title {
		font-family: 'SamlipOutline', sans-serif;
		font-size: 50px;
		text-align: center;
		margin: 20px;
	}

	.page-title:hover {
		cursor: default;
		color: #3a5867;
	}

	main {
		padding: 20px;
		margin: 20px;
		height: 100%;
		background-color: #fff;
	}


	h2.sub {
		font-family: "SamlipBasic", sans-serif;
		font-size: 30px;
		text-align: center;
		margin: 20px;
	}

	/*
    #edit {
        width: 50%;
        margin-top: 20px;
    }

    #edit td {
        padding: 8px;
    }

    input[type="submit"], input[type="button"] {
        background-color: #006bb3;
        color: white;
        padding: 8px;
        border: none;
        cursor: pointer;
    }

    input[type="submit"]:hover, input[type="button"]:hover {
        background-color: #005493;
    }

    a {
        text-decoration: none;
        color: #006bb3;
    }

    a:hover {
        text-decoration: underline;
        color: #005493;
    }
    */

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
<header>
	<h1 class="home-title">TMI ( Team 모임은 이거지 )</h1>

</header>
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
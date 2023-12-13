<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8"><title>TMI Main Page</title>
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
		text-align: center;
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


	h2 {
		font-family: "SamlipBasic", sans-serif;
		font-size: 30px;
		text-align: center;
		margin: 20px;
	}

	/*profiles list */
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


	button {
		display: inline-block;
		padding: 10px 20px;
		background-color: #ffffff;
		color: #333333;
		text-decoration: none;
		border: none;
		transition: background-color 0.3s ease;
	}

	button:hover {
		background-color: #3a5867;
		color: #fff;
	}
	#list {
		font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		border-collapse: collapse;
		width: 95%;
		margin: auto;

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
		background-color: #3a5867;
		color: white;
	}
	div {
		text-align: left;
	}
	.member {
		margin: 15px;
	}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='team/activitydelete/' + id;
	}
</script>
</head>
<body>
<header>
	<h1 class="home-title">TMI (팀 모임은 이거지)</h1>

</header>
<button class="member" onclick="location.href='team/memberslist'"> 팀 명단 확인하러가기 </button>
<div>
	<h3>
		Weekly Activities
		<button type="button" onclick="location.href='team/activityadd'">Add</button>
	</h3>

<table id="list">
	<tr>
		<th>ID</th>
		<th>Title</th>
		<th>Week</th>
		<th>Details</th>
		<th>Input Date</th>
		<th>View</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach items="${TMI_home}" var="u" varStatus="status">
		<tr>
			<td>${status.index + 1}</td>
			<td>${u.title}</td>
			<td>${u.week}</td>
			<td>${u.details}</td>
			<td>${u.regdate}</td>
			<td><a href="team/activityview/${u.seq}">View</a></td>
			<td><a href="team/activityedit/${u.seq}">Edit</a></td>
			<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
		</tr>
	</c:forEach>
</table>
</div>

<br/>

</body>
</html>
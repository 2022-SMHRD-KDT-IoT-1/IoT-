<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<style type="text/css">
.content {
	height: 100vh;
	background-image: url("../../images/overlay.png"),
		linear-gradient(0deg, rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.1)),
		url("../../images/bg.jpg");
	padding: 3px;
}

	#board{
		width: 1000px !important;
		margin: 0px auto !important;
		text-align: center !important;
		margin-top: 100px !important;
	}
	#list{
		margin: 0px auto !important;
	}
	#writer{
		margin-top: 50px !important;
	}

	article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
		display: block;
	}

	body {
		line-height: 1;
		    background-image: url(../../images/overlay.png), linear-gradient(0deg, rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.1)), url(../../images/bg.jpg);
	}

	ol, ul {
		list-style: none;
	}

	blockquote, q {
		quotes: none;
	}

	blockquote:before, blockquote:after, q:before, q:after {
		content: '';
		content: none;
	}

	table {
		border-collapse: collapse;
		border-spacing: 0;
	}

	body {
		-webkit-text-size-adjust: none;
	}
	
	table tbody tr:nth-child(2n + 1) {
   		background-color: rgb(34 46 72 / 25%);
	}
	
	h2{
		text-align: center;
		margin-top: 2rem; 
		font-family:'Gamja Flower', cursive;
	}
</style>
</head>

<body style="background-color: baige;">

	 <% MemberVO vo = (MemberVO) session.getAttribute("vo"); %>
		
	
	<!-- <div class="content"> -->
			<nav id="nav">
				<ul class="links">
					<li><a href="main.jsp">d Flasche</a></li>
					<%if(vo==null){%>
					<li><a href="Login.jsp">Login & Sign Up</a></li>
					<%}else{ %>
					<li><a href="note.jsp">부향률 페이지</a></li>
					<li><a class="active" href="goBoardMain">Community</a></li>
					<li><a class="active" href="goIngredientMain">향수원료Page</a></li>
					<li><a href="mypage.jsp">My Page</a></li>
					<%} %>
				</ul>
				<ul class="icons">
					<%if(vo!=null){%>
					<li><%=vo.getM_nick()%>님</li>
				</ul>
				<ul class="actions small">
					<li><a href="LogoutService" class="button primary small"
						style="padding: 0 10px; margin: 0 5px;">Logout</a></li>
				</ul>
				<%} %>
			</nav> 
					
			<div id = "board" style="background-color: white";>
				<form action="writeIngredient" method="post" enctype="multipart/form-data">
				<h2 style="text-align: center;">향수 원료 등록</h2>
				<table id="list">
					<tr>
						<td>작성자</td>
						<td> <input type="text" name="admin"> </td>
					</tr>
					<tr>
						<td>원료명</td>
						<td><input  type="text" name="name"></td>
					</tr>
					<tr>
						<td>종류</td>
						<td><input type="text" name="type"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input name="file" type="file" style="float: center;">
										
						</td>
					</tr>
					<tr>
						<td>특징</td>
						<td><textarea name="specialty" rows="3" style="resize: none;"></textarea></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" value="초기화">
							<input type="submit" value="등록하기">
						</td>
					</tr>
				</table>
				</form>
			</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>
<%@page import="model.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta charset="utf-8" />
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
		color:white;
	}
	#list{
		margin: 0px auto !important;
	}
	#writer{
		margin-top: 50px !important;
	}
/* 	a{
		text-decoration: none !important;
	}
	
		html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
		margin: 0;
		padding: 0;
		border: 0;
		font-size: 100%;
		font: inherit;
		vertical-align: baseline;
	} */

	article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
		display: block;
	}

	body {
		line-height: 1;
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
</style>
</head>

<body class="is-preload">

	<%
		MemberVO vo = (MemberVO) session.getAttribute("vo");
	%>
	<div class="content">
					<nav id="nav">
						<ul class="links">
							<li class="active"><a href="main.jsp">d Flasche</a></li>
							<%if(vo==null){%>
								<li><a href="Login.jsp">Login & Sign Up</a></li>
								<%}else if(vo!=null && !vo.getM_id().equals("admin")){ %>
									<li><a href="alcohol.jsp">Create Perfume</a></li>
									<li><a href="perfumeGuide.jsp">Perfume Book</a></li>
									<li><a href="goBoardMain">Flagram</a></li>
									<li><a href="mypage.jsp">My Page</a></li>
								<%}else if(vo!=null && vo.getM_id().equals("admin")){ %>
									<li><a href="goBoardMain">Flagram</a></li>
									<li><a href="perfumeIngredient.jsp">향수원료page</a></li>
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
				<div id = "board">
				<form action="WriteService" method="post" enctype="multipart/form-data">
				<table id="list">
					<tr>
						<td>제목</td>
						<td><input type="text" name="title"></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><input  type="text" name="writer"></td>
					</tr>
					<tr>
						<td colspan="2">내용</td>
					</tr>
					<tr>
						<td colspan="2">
							<input name="file2" type="file" style="float: right;">
							<input name="file1" type="file" style="float: right;">
							<textarea name="content" rows="10" style="resize: none;"></textarea>			
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" value="초기화">
							<input type="submit" value="작성하기">
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
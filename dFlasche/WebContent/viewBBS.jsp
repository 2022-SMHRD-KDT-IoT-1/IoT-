<%@page import="model.BoardVO"%>
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
		BoardVO bvo = (BoardVO)request.getAttribute("bvo");
	%>
	<div class="content">
			<nav id="nav">
				<ul class="links">
					<li><a href="main.jsp">d Flasche</a></li>
					<%if(vo==null){%>
					<li><a href="Login.jsp">Login & Sign Up</a></li>
					<%}else{ %>
					<li><a href="note.jsp">부향률 페이지</a></li>
					<li><a class="active" href="goBoardMain">Community</a></li>
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
				<table id="list">
					<tr>
						<td><%=bvo.getArticle_subject()%></td>
					</tr>
					<tr>
						<td><%=bvo.getM_id() %></td>
					</tr>
					<tr>
						<td colspan="2"><%=bvo.getArticle_content() %></td>
					</tr>
					<tr>
						<td colspan="2">
							<img alt="" src="img/<%=bvo.getArticle_file1()%>">
						</td>
						<%if(bvo.getArticle_file2() != null) {%>
						<td colspan="2">
							<img alt="" src="img/<%=bvo.getArticle_file2()%>">
						</td>
							<%} %>
					</tr>
					<tr>
						<td colspan="2"><a href="goBoardMain"><button>뒤로가기</button></a></td>
					</tr>
				</table>
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
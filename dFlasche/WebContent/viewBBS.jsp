<%@page import="model.CommentVO"%>
<%@page import="java.util.List"%>
<%@page import="model.BoardVO"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
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
	color: white;
}

.board {
	width: 1000px !important;
	margin: 0px auto !important;
	text-align: center !important;
	margin-top: 100px !important;
}

.board2 {
	width: 1000px !important;
	margin: 0px auto !important;
	text-align: center !important;
	margin-top: -5px !important;
}

.list {
	margin: 0px auto !important;
}

#writer {
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
article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
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

table{
	width: 1000px !important;
	margin: 0px auto !important;
	text-align: center !important;
	margin-top: 1rem !important;
	border-collapse: collapse;
	border-spacing: 0;
}

td {
	border-style: hidden !important;
}

body {
	-webkit-text-size-adjust: none;
}

th {
	text-align: center;
}

img{
   width:500px;
   height:400px;
}

</style>
</head>

<body class="is-preload">

	<%
	MemberVO vo = (MemberVO) session.getAttribute("vo");
	BoardVO bvo = (BoardVO) request.getAttribute("bvo");
	CommentVO cvo = (CommentVO) request.getAttribute("cvo");
	List<CommentVO> list = (List<CommentVO>) request.getAttribute("list");
	%>
	<div class="content">
		<nav id="nav">
			<ul class="links">
				<li><a href="main.jsp">d Flasche</a></li>
				<%
					if (vo == null) {
				%>
				<li><a href="Login.jsp">Login & Sign Up</a></li>
				<%
					} else {
				%>
				<li><a href="note.jsp">Create Perfume</a></li>
				<li><a class="active" href="goBoardMain">Flagram</a></li>
				<li><a href="IngredientMain">Perfume Book</a></li>
				<li><a href="mypage.jsp">My Page</a></li>
				<%
					}
				%>
			</ul>
			<ul class="icons">
				<%
					if (vo != null) {
				%>
				<li><%=vo.getM_nick()%>님</li>
			</ul>
			<ul class="actions small">
				<li><a href="LogoutService" class="button primary small"
					style="padding: 0 10px; margin: 0 5px;">Logout</a></li>
			</ul>
			<%
				}
			%>
		</nav>

		<form action="commentService">
			<div class="board">
				<table class="list">
					<tr>
						<td style="width: 100px;"><input name="article_seq"
							type="hidden" value="<%=bvo.getArticle_seq()%>"></td>
						<td colspan="2"><span
							style="display: block; margin-right: 100px;"><%=bvo.getArticle_subject()%></span></td>
					</tr>
					<tr>
						<td colspan="3"><%=bvo.getM_id()%></td>
					</tr>
					<tr>
						<td colspan="3"><%=bvo.getArticle_content()%></td>
					</tr>
					<tr>
						<td colspan="2"><img alt=""
							src="img/<%=bvo.getArticle_file1()%>"></td>
						<%
							if (bvo.getArticle_file2() != null) {
						%>
						<td colspan="2"><img alt=""
							src="img/<%=bvo.getArticle_file2()%>"></td>
						<%
							}
						%>
					</tr>

					<tr>
						<td colspan="3"><a href="goBoardMain"><button>뒤로가기</button></a></td>
					</tr>

				</table>
			</div>

			<!-- 댓글  -->

		<table id="table" border="1" style="width:80px; align: center;">

				<tr>
					<td style="border-bottom: none;" valign="middle"><input
						type="text" name="comm_writer" placeholder="작성자" style="width:130px;"></td>
					<td><input type="text" style="height: 60px;"
						class="form-contorl" placeholder="상대방을 존중하는 댓글을 남깁시다."
						name="comm_content"></td>
					<td><input type="submit" id="btn" value="댓글 작성"></td>
				</tr>

<%--  			 <tr class="nameTr">
					<th>작성자</th>
					<th>내용</th>
					<th>시간</th>
				 </tr>	

 				 <%for (CommentVO cvo2 : list) {%>
									
				<tr></tr>

				<tr class="nameTr">
					<td><%=cvo2.getM_id()%></td>
					<td><%=cvo2.getcomm_content()%></td>
					<td><%=cvo2.getcomm_date()%></td>
				</tr>
				<%}%>  --%>
			

			</table>




		<table class="list" border="none" style="width:53%;">
			<tr class="nameTr">
				<th>작성자</th>
				<th>내용</th>
				<th>시간</th>
			</tr>

			<%for(CommentVO cvo2 : list){ %>
			<tr></tr>

			<tr class="nameTr">
				<td><%=cvo2.getM_id() %></td>
				<td><%=cvo2.getcomm_content() %></td>
				<td><%=cvo2.getcomm_date() %></td>
			</tr>
			<%} %>
		</table> 
	</div>
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

	<script type="text/javascript">
		function like() {
			const like = document.querySelector('#dislike');
			like.className = 'fas fa-heart';
			like.style.color = 'red';
		}

		function dislike() {
			if (like.className = 'fas fa-heart') {
				like.className = 'far fa-heart';
				like.style.color = 'white';
			}
		}
	</script>

</body>

</html>
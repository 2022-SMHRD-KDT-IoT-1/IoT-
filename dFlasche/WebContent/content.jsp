<%@page import="model.CommentVO"%>
<%@page import="model.BoardVO"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="EUC-KR">
<title>Community Page</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<style type="text/css">
/* .article {
	width: 1400px;
	height: 1800px;
} */

#comment {
	width: 750px;
	height: 800px;
	float: right;
	margin-top: 300px;
}

.comm {
	margin-left: 30px;
}

#table{
	width: 1400px;
	height: 1000px;
}

#img{
	width: 850px;
	height: 550px;
}


</style>
</head>

<body class="is-preload">

	<%
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		out.print(vo);
		
		BoardVO bv = (BoardVO)session.getAttribute("bv");
		out.print(bv);
		
		CommentVO cv = (CommentVO)session.getAttribute("cv");
		out.print(cv);
	%>

	<!-- Wrapper -->
	<div id="wrapper" class="fade-in">

		<!-- <!-- Intro -->
		<!-- <div id="intro">
			<h1></h1>
		</div> -->

		<!-- Nav -->
		<nav id="nav">
			<!-- <ul class="links">
				<li class="active"><a href="main.jsp">d Flasche</a></li>
				<li><a href="mypage.jsp">My Page</a></li>
			</ul> -->
			<ul class="icons">
				<%
					if (vo != null) {
				%>
				<li>
					<%-- <%=vo.getM_nick()%>님 --%>
				</li>
			</ul>
			<ul class="actions small">
				<li><a href="LogoutService" class="button primary small"
					style="padding: 0 10px; margin: 0 5px;">Logout</a></li>
			</ul>
			<%
				}
			%>

		</nav>

	</div>

	<!-- Main -->
	<div id="main">
	
		<form action="#" method="post">
		
			<table id="table" border="1">
				<tr>
					<td colspan="3">작성자</td>
				</tr>
				<tr class="content">
					<td colspan="3" align="center">
						<span>
						바다냄새를 만들어봤습니다<br>
						Top Note : %<br>
						Middle Note : %<br>
						Base Note : %<br>
						</span>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center"><img id="img" src="images/pppp.png"></td>
				</tr>
				
				<tr>
					<td colspan="3">
						<i id='dislike' class='far fa-heart' onclick="like()"></i>
						<i class="far fa-comment"></i>
					</td>
				</tr>
				
				<tr>
					<td style="border-bottom: none;" valign="middle">댓글작성자</td>
					<td><input type="text" style="height: 120px;"
								class="form-contorl" placeholder="상대방을 존중하는 댓글을 남깁시다"
								name="commentText"></td>
					<td>
					<button type="submit" id="btn">댓글 작성</button>
					</td>
				</tr>
				
				<tr>
					<td>smart1</td>
					<td colspan="2">저도 만들어보고 싶어요</td>
				</tr>
				
				<tr>
					<td>smart2</td>
					<td colspan="2">바다냄새</td>
				</tr>
				
				<tr>
					<td>smart3</td>
					<td colspan="2">잘 보고 갑니다 </td>
				</tr>
			
			</table>
		
		</form>
	
		</div>


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
	function like(){
		const like = document.querySelector('#dislike');
		like.className = 'fas fa-heart';
		like.style.color = 'red';
		} 

		function dislike(){			
		if(like.className = 'fas fa-heart'){
		like.className = 'far fa-heart';
		like.style.color = 'white'; 
		}
		} 
		
	</script>


</body>

</html>
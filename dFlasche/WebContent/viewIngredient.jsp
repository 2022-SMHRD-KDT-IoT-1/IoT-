<%@page import="model.IngredientVO"%>
<%@page import="java.util.List"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="EUC-KR">
<title>ViewInGredient</title>
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

	.board{
		width: 1000px !important;
		margin: 0px auto !important;
		text-align: center !important;
		margin-top: 100px !important;
	}
	.list{
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
		IngredientVO ivo = (IngredientVO)request.getAttribute("ivo");
		List<IngredientVO> list = (List<IngredientVO>)request.getAttribute("list");
	%>
	<!-- 원료 클릭했을 때 내용 보이는 곳 -->
	
	<div class="content">
			 <nav id="nav">
				<ul class="links">
					<li><a href="main.jsp">d Flasche</a></li>
					<%if(vo==null){%>
					<li><a href="Login.jsp">Login & Sign Up</a></li>
					<%}else{ %>
					<li><a href="alcohol.jsp">부향률 페이지</a></li>
					<li><a class="active" href="goBoardMain">Community</a></li>
					<li><a href="mypage.jsp">My Page</a></li>
					<li><a href="perfumeIngredient.jsp">원료 등록하기</a></li>
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
			
			<div class = "board">
				<form action="DeleteIngredient" method="post" name="frm">
				<table class="list" style="color:white;">
					<tr>
						<td>no.<%=ivo.getP_seq() %></td>
					</tr>
					<tr style="background-color: ">
						<td><%=ivo.getP_name() %></td>
					</tr>
					<tr>
						<td>타입 : <%=ivo.getP_type() %></td>
					</tr>
					<tr>
						<td colspan="2">
							<img alt="" src="img/<%=ivo.getP_file()%>">
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center;"><%=ivo.getP_specialty() %></td>
					</tr>
					
					<tr>
						<td colspan="2">
						<a href="#"><a href="goIngredientMain"><button>목록</button></a> 
						<button type="button" id="deletebtn" onclick="deleteIngredient()">삭제하기</button></a>
						</td>
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
		
	$(document).ready(function(){
	    $("#deletebtn").on('click', function() {  // 아이디가 deletebtn인 엘리먼트가 눌리면?
	        if(confirm("정말로 삭제하시겠습니까??")) {  // 확인 창이 열림
	            frm.submit();
	        };
	    });
	});
	
	
	
	</script>

</body>

</html>
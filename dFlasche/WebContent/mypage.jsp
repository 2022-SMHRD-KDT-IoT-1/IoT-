<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MyPage</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap')
	;

ul.action {
	display: -moz-flex;
	display: -webkit-flex;
	display: -ms-flex;
	display: flex;
	cursor: default;
	list-style: none;
	position: absolute;
	left: 300px;
}

/* 	#wrapper {
		-moz-transition: opacity 0.5s ease;
		-webkit-transition: opacity 0.5s ease;
		-ms-transition: opacity 0.5s ease;
		transition: opacity 0.5s ease;
		position: relative;
		height:100%;
		z-index: 1;
		overflow: hidden;
	} */

/* ul.action.stacked {
	-moz-flex-direction: column;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
}

ul.action.stacked li {
	padding: 1.3rem 0 0 0;
}

ul.action.stacked li:first-child {
	padding-top: 0;
} */
</style>
</head>
<body class="is-preload" style="line-height:0">

	<%
	MemberVO vo = (MemberVO)session.getAttribute("vo");
	out.print(vo);
	%>

		<div id="wrapper">

			<!-- Header -->
			<header id="header">
				<a href="main.jsp" class="logo">Home</a>
			</header>

			<!-- Main -->
			<div id="main">

				<!-- Post -->
				<section class="post">
					<header class="major">
						<h2 id="content">
							<%=vo.getM_nick()%>님 환영합니다.
						</h2>
					</header>

					<div>
						<ul class="action stacked">
						<li><a href="update.jsp" class="button primary">정보변경</a></li>
						<li><a href="#" id="delete" class="button primary" onclick="deleteCheck()">회원탈퇴</a></li>
						<li><a href="#" class="button primary">나의배합</a></li>
						<li><a href="#" class="button primary">뿅뿅뿅뿅</a></li>
						<li><a href="#" class="button primary">뿅뿅뿅뿅</a></li>
						</ul>
					</div>
					</section>
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
		
		function deleteCheck() {
			var check = confirm('회원님의 계정을 정말로 삭제하시겠습니까?');
			
			if(check){
				alert('탈퇴가 완료되었습니다. 감사합니다.')
			var del = document.querySelector('#delete').setAttribute('href',"DeleteService");
			}
		}
		
		</script>


</body>
</html>
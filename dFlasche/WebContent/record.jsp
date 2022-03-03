<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Result Page</title>
<meta charset="utf-8" />
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

#content {
	font-family : 'fonts/ng.otf';
	font-size: 1.4rem;
}

#nameTr {
	font-family: 'Gamja Flower', cursive;
	font-size: 1.2rem;
	text-align: center;
}

#sumTr {
	font-family: 'Gamja Flower', cursive;
	font-size: 1.2rem;
	text-align: center;
}

.input {
	text-align: center;
	width: 170px;
}
</style>
</head>
<body class="is-preload">



		<div id="wrapper">

			<!-- Header -->
			<header id="header" style="position:relative;top:30px;">
				<a href="main.jsp" class="logo">Home</a>
			</header>

			<!-- Nav -->
			<nav id="nav">
				<ul class="links">
					<li><a href="main.jsp">Home</a></li>
				</ul>
				
			</nav>

			<div id="main">
				<section class="post">
				<div id = "board">
				<!-- Post -->
					<header class="major">
						<p id="content" name="base">님이 선택하신 향수는 오드퍼퓸, Top Note의 시트러스 버베나 : 1g, Middle Note의 라벤더 : 0.5g, Base Note의 화이트 머스크 : 1.5g 입니다.</p>
					</header>
				<form action="record" method="post" enctype="multipart/form-data">
				<table id="list">
					<tr>
						<td>향수 이름</td>
						<td><input type="text" name="title"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input name="file" type="file"><br>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<p>특징 또는 느낌</p>
							<textarea name="content" rows="10" style="resize: none;"></textarea>			
						</td>
					</tr>
					<tr>
						<td colspan="3" style="text-align:center;">
							<button id="create" class="button primary" onclick="mymix()">
								저장</button>
							<a href="main.jsp">
							<button type="button" class="button primary">HOME</button>
							</a>
						</td>
					</tr>
				</table>
				</form>
			</div>



		<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; d Flasche</li>
			</ul>
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
		
		<script>
			function mymix(){
				var record = confirm("방금 만드신 향수를 나의 배합에 저장할까요?")
				
				if(record != true){
					document.querySelector('form').setAttribute('action', 'GoMain')
				}
				
			}
		</script>

</body>
</html>
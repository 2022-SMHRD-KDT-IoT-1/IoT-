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
						<p id="content" name="base">���� �����Ͻ� ����� ������Ǿ, Top Note�� ��Ʈ���� ������ : 1g, Middle Note�� �󺥴� : 0.5g, Base Note�� ȭ��Ʈ �ӽ�ũ : 1.5g �Դϴ�.</p>
					</header>
				<form action="record" method="post" enctype="multipart/form-data">
				<table id="list">
					<tr>
						<td>��� �̸�</td>
						<td><input type="text" name="title"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input name="file" type="file"><br>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<p>Ư¡ �Ǵ� ����</p>
							<textarea name="content" rows="10" style="resize: none;"></textarea>			
						</td>
					</tr>
					<tr>
						<td colspan="3" style="text-align:center;">
							<button id="create" class="button primary" onclick="mymix()">
								����</button>
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
				var record = confirm("��� ����� ����� ���� ���տ� �����ұ��?")
				
				if(record != true){
					document.querySelector('form').setAttribute('action', 'GoMain')
				}
				
			}
		</script>

</body>
</html>
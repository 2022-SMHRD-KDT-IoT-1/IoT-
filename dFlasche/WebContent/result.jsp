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



	<form action="record.jsp" method="post">
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

			<!-- Main -->
			<div id="main">

				<!-- Post -->
				<section class="post">
				<form action="record.jsp" method="post">
					<header class="major">
						<p id="content" name="base">���� �����Ͻ� ����� ������Ǿ�̰�</p>
						<p id="content" name="tnote">Top Note�� ��Ʈ���� ������ : g</p>
						<p id="content" name="mnote">Middle Note�� �󺥴� : g</p>
						<p id="content" name="bnote">Base Note�� ȭ��Ʈ �ӽ�ũ : g �Դϴ�.</p>
					</header>
					<p style="text-align:center;">
					<button id="create" type="submit" class="button primary" onclick="mymix()">
					�����ϱ�
					</button>
					<button class="button primary">
					�ڷΰ���
					</button>
					</p>
				</form>
			</section>
			</div>
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
				}else{
					document.querySelector('form').setAttribute('action', 'record.jsp')
					
				}
				
			}
		</script>

</body>
</html>
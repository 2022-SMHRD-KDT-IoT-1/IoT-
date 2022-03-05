
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Jomalone</title>
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
	font-family: 'Gamja Flower', cursive;
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

b{
	color:navy;
}

input{
	text-align: center;
}

.inputtd{
	text-align: center;
}

#notetr4{
	font-family: 'Gamja Flower', cursive;
	font-size: 1.3rem;
}
</style>
</head>
<body class="is-preload">

	<%
		int num1 = 3;
		int num2 = 4;
		int num3 = 1;
		int num4 = 2;
		int sum = num1+num2+num3+num4;
	%>
	
	
	<form action="result.jsp" method="post">
		<div id="wrapper">

			<!-- Header -->
			<header id="header">
				<a href="main.jsp" class="logo">Home</a>
			</header>

			<!-- Nav -->
			<nav id="nav">
				<ul class="links">
					<li><a href="alcohol.jsp">������� Page</a></li>
					<li><a href="perfumeGuide.jsp">������� guide</a></li>
				</ul>
				
				<!-- <ul class="icons">
					<li><a href="https://twitter.com/i/flow/login"
						class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="https://ko-kr.facebook.com/"
						class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
					<li><a
						href="https://www.instagram.com/accounts/login/?source=auth_switcher"
						class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
				</ul> -->
				
			</nav>

			<!-- Main -->
			<div id="main">

				<!-- Post -->
				<section class="post">
					<header class="major">
						<p id="content" style="font-size : 3rem;">�����Ͻ� <b>������ ��ϼ�Ŭ</b> ���� <b>�����</b>�Դϴ�.</p>
					</header>

					<div class="image main">
						<img src="images/bottle.png">
					</div>

					<h2 class="major" align="center">����ǥ</h2>
					<h4 class="major">�ش����� g(�׷�)�Դϴ�.</h4>
					<form>
						<table border="1" style="width: 100%; height: 100px;">
							<tr id="nameTr">
								<td align="center" width="350px;">Note</td>
								<td style="width: 400px;">��� �̸�</td>
								<td width="300px;">��� ����(g)</td>
							</tr>

							<tr id="notetr1">
								<td align="center">Top Note</td>
								<td id="topnotetd" class="input">�ٹٳ�</td>
								<td class="inputtd"><%=num1 %>g</td>
							</tr>
							
							<tr></tr>
							<tr></tr>

							<tr id="notetr2">
								<td align="center">Middle Note</td>
								<td rowspan="2" class="input">�ε�����<br> ���</td>
								<td rowspan="2" class="inputtd"><%=num2 %>g<br> <%=num3 %>g</td>
							</tr>
							
							<tr></tr>
							<tr></tr>
							
							<tr id="notetr3">
								<td align="center">Base Note</td>
								<td class="input">�̳�</td>
								<td class="inputtd"><%=num4 %>g</td>
							</tr>
							<tr></tr>
							
							<tr id="notetr4">
								<td align="center">���ڿú���</td>
								<td class="inputtd" >�� �� �ڷ�(eau de cologne) : 80%</td>
							</tr>
								
							<tr id="sumTr">
								<td>�հ�</td>
								<td></td>
								<td><b><%=sum %>g</b></td>
							</tr>

							<tr align="center">
								<td colspan="3"><input type="submit" value="����"></td>
							</tr>

						</table>
					</form>
			</div>
		</div>

		</footer>

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

	</form>

</body>
</html>
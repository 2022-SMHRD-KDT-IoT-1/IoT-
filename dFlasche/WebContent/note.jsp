<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Note Page</title>
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
</style>
</head>
<body class="is-preload">

	<form action="result.jsp" method="post">
		<div id="wrapper">

			<!-- Header -->
			<header id="header">
				<a href="main.jsp" class="logo">Home</a>
			</header>

			<!-- Nav -->
			<nav id="nav">
				<ul class="links">
					<li class="active"><a href="note.jsp">����� Page</a></li>
				</ul>
				<ul class="icons">
					<li><a href="https://twitter.com/i/flow/login"
						class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="https://ko-kr.facebook.com/"
						class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
					<li><a
						href="https://www.instagram.com/accounts/login/?source=auth_switcher"
						class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
				</ul>
			</nav>

			<!-- Main -->
			<div id="main">

				<!-- Post -->
				<section class="post">
					<header class="major">
						<p id="content">
							�ڽ��� ���⿡ ���� ������� �����ּ���.<br>
						</p>
					</header>

					<div class="image main">
						<img src="images/bottle.png">
					</div>

					<h2 class="major" align="center">����ǥ</h2>
					<h4 class="major">�ش����� g(�׷�)�Դϴ�.</h4>
					<form>
						<table border="1" style="width: 1200px; height: 100px;">
							<tr id="nameTr">
								<td align="center" width="350px;">Note</td>
								<td style="width: 400px;">��� �̸�</td>
								<td width="300px;">��� ����(g)</td>
							</tr>

							<tr>
								<td align="center">Top Note</td>
								<td class="input"><select name="pname"
									onchange="selectForm(this.options[this.selectedIndex].value)"
									style="width: 200">
										<option value="citrusVerbena">��Ʈ���� ������</option>
										<option value="mandarin">���ٸ�</option>
										<option value="bergamot">��������</option>
										<option value="lime">����</option>
										<option value="teatree">ƼƮ��</option>
								</select></td>
								<td><input type="text"></td>
							</tr>

							<tr>
								<td align="center">Middle Note</td>
								<td class="input"><select name="pname">
										<option value="Lavender">�󺥴�</option>
										<option value="cinnamon">�ó���</option>
										<option value="Lilac">���϶�</option>
										<option value="rosemary">�����</option>
										<option value="cypress">����������</option>
								</select></td>
								<td><input type="text"></td>
							</tr>

							<tr>
								<td align="center">Base Note</td>
								<td class="input"><select name="pname">
										<option value="whitemusk">ȭ��Ʈ �ӽ�ũ</option>
										<option value="benzoin">������</option>
										<option value="sandalwood">���޿��</option>
										<option value="thyme">Ÿ��</option>
										<option value="vainilla">�ٴҶ�</option>
								</select></td>
								<td><input type="text"></td>
							</tr>

							<tr id="sumTr">
								<td>�հ�</td>
								<td colspan="2">g</td>
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
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Alcohol Page</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap');

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

#perfume{
	font-family: 'fonts/gm.otf';
	font-size: 1.3em;
	font-weight: bolder;
	float: right;
	margin-top: 220px;
}
#EDP{
	font-family: 'fonts/gm.otf';
	font-size: 1.3em;
	font-weight: bolder;
	float: right;
	margin-top: 220px;
}
#EDT{
	font-family: 'fonts/gm.otf';
	font-size: 1.3em;
	font-weight: bolder;
	float: right;
	margin-top: 220px;
}
#EDC{
	font-family: 'fonts/gm.otf';
	font-size: 1.3em;
	font-weight: bolder;
	float: right;
	margin-top: 220px;
}

</style>

<script src="js/jquery-3.6.0.js"></script>

</head>
<body class="is-preload">

	<form action="alcohol" method="post">
		<div id="wrapper">

			<!-- Header -->
			<header id="header">
				<a href="main.jsp" class="logo">d Flasche</a>
			</header>

			<!-- Nav -->
			<nav id="nav">
				<ul class="links">
					<li class="active"><a href="alcohol.jsp">���ڿ� �� ���� ������</a></li>
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
							���ϴ� ���ӽð��� ���� ����� ������ �����Ͻø� �˴ϴ�.<br>���� ������ ���ϽŴٸ� ������ Ŭ�����ּ���!<br>
							���̵带 ���ϽŴٸ� <a href="perfumeGuide.jsp">����� ���̵�</a>�� �̵����ּ���.
						</p>
					</header>

					<div class="p">
						<img onclick="show1()" width="180px;" height="360px;" src="images/perfume.png">
						<p id="perfume"></p>
					</div>
					<br>

					<div class="p">
						<img onclick="show2()" width="180px;" height="360px;" src="images/edp.png">
						<p id="EDP"></p>
					</div>
					<br>

					<div class="p">
						<img onclick="show3()" width="180px;" height="360px;" src="images/edt.png">
						<p id="EDT"></p>
					</div>
					<br>

					<div class="p">
						<img onclick="show4()" width="180px;" height="360px;" src="images/edc.png">
						<p id="EDC"></p>
					</div>

					<br>
					<div>
						<br> 
						<label for="perfume">��� ���� ����</label> 
						<select name="alcohol">
							<option name="perfume" value="0">��Ǿ(Perfume - ���ڿ�80%)</option>
							<option name="perfume" value="1">�� �� ��Ǿ(Eau de Perfume - ���ڿ�85%)</option>
							<option name="perfume" value="2">�� �� �ѿз�(Eau de Toillette - ���ڿ�90%)</option>
							<option name="perfume" value="3">�� �� �ڷ�(Eau de Cologne - ���ڿ�95%)</option>
						</select>
					</div>
					<br>
					
					<table>
						<tr>
							<td colspan="3" align="center">
								<input type="submit" value="����">
							</td>
						</tr>
					</table>
			</div>
		</div>

	</form>



	<!-- Copyright -->
	<div id="copyright">
		<ul>
			<li>&copy; d Flasche</li>
		</ul>
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
		function show1() {
			$.ajax({
				url : 'ex01perfume',
				type : 'post',
				success : function() {
					$('#perfume').html('<p>> ���ڿ� 80%�� ��� 20%�� ������� ���ӽð� 6�ð� �̻� </p>');
				},
				error : function() {
					alert("error");
				}

			});

		}

		function show2() {
			$.ajax({
				url : 'ex01perfume',
				type : 'post',
				success : function() {
					$('#EDP').html('<p>> ���ڿ� 85%�� ��� 15%�� ������� ���ӽð�5�ð� �̻� </p>');
				},
				error : function() {
					alert("error");
				}

			});

		}

		function show3() {
			$.ajax({
				url : 'ex01perfume',
				type : 'post',
				success : function(res) {
					$('#EDT').html('<p>> ���ڿ� 90%�� ��� 10%�� ������� ���ӽð� 3�ð� �̻� </p>');
				},
				error : function() {
					alert("error");
				}

			});

		}

		function show4() {
			$.ajax({
				url : 'ex01perfume',
				type : 'post',
				success : function(res) {
					$('#EDC').html('<p>> ���ڿ� 95%�� ��� 5%�� ������� ���ӽð� 2�ð� �̻� </p>');
				},
				error : function() {
					alert("error");
				}

			});

		}
	</script>


	</form>

</body>
</html>
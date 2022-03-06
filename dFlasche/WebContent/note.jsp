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
	font-family: monospacem, normal;
	font-size: 1.7rem;
}

#nameTr {
	font-family: 'initial';
	font-size: 1.2rem;
	text-align: center;
}

#sumTr {
	font-family: 'initial';
	font-size: 1.2rem;
	text-align: center;
}

.input {
	text-align: center;
	width: 170px;
}
p{
 	font-family: 'initial', normal;
	font-size: 1.5rem;
	text-align: center;
}

.select{
	font-family: monospace;
}
</style>
</head>
<body class="is-preload">

	<%
		String alcohol = (String)session.getAttribute("alcohol");
	%>
	
	
	<form action="result" method="post">
		<div id="wrapper">

			<!-- Header -->
			<header id="header">
				<a href="main.jsp" class="logo">Home</a>
			</header>

			<!-- Nav -->
			<nav id="nav">
				<ul class="links">
					<li><a href="alcohol.jsp">Create Perfume</a></li>
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
						<p id="content">
							���� 3�� ����� ��ġ����, ġŲ����, �ٸ� ��� ��������<br>
							d Flasche���� �츮�� ��� ������!(^_-)
						</p>
						
						<!-- <p id="content">
							3�� ����� ��ġ����,<br>
							d Flasche���� �츮�� ��� ������!(^_-)
						</p> -->
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

							<tr id="notetr1">
								<td align="center">Top Note</td>
								<td class="input">
								<select name="pname1" class="select"
										onchange="selectForm(this.options[this.selectedIndex].value)"
										style="width: 200">
										<option value="0">��Ʈ���� ������</option>
										<option value="1">���ٸ�</option>
										<option value="2">��������</option>
										<option value="3">����</option>
										<option value="4">ƼƮ��</option>
								</select></td>
								<td><input type="text" name="num1"></td>
							</tr>

							<tr id="notetr2">
								<td align="center">Middle Note</td>
								<td class="input">
								<select name="pname2" class="select">
										<option value="0">�󺥴�</option>
										<option value="1">�ó���</option>
										<option value="2">���϶�</option>
										<option value="3">�����</option>
										<option value="4">����������</option>
								</select></td>
								<td><input type="text" name="num2"></td>
							</tr>

							<tr id="notetr3">
								<td align="center">Base Note</td>
								<td class="input">
								<select name="pname3" class="select">
										<option value="0">ȭ��Ʈ �ӽ�ũ</option>
										<option value="1">������</option>
										<option value="2">���޿��</option>
										<option value="3">Ÿ��</option>
										<option value="4">�ٴҶ�</option>
								</select></td>
								<td><input type="text" name="num3"></td>
							</tr>

							<tr id="sumTr">
								<td colspan="2">
									<button type="button" onclick="sum()">�հ�</button>
								</td>
								<td>
									<hr class="sum">
								</td>
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
		
		<script type="text/javascript">
			function sum() {
				var num1 = $('input[name=num1]').val()
				var num2 = $('input[name=num2]').val()
				var num3 = $('input[name=num3]').val()
				
				$.ajax({
					url : 'notesum',
					type : 'post',
					data : {
						'num1' : num1,
						'num2' : num2,
						'num3' : num3
					},
					
					success : function(res) {
						console.log(res);
						$('.sum').empty();
						$('.sum').append(res);
					},
					error : function() { alert("error"); }
					
				});
				
			}
		
		</script>

	</form>

</body>
</html>
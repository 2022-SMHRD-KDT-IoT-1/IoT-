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
					<li><a href="note.jsp">부향률 Page</a></li>
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
							자신의 취향에 따라 부향률을 정해주세요.<br>
						</p>
					</header>

					<div class="image main">
						<img src="images/bottle.png">
					</div>

					<h2 class="major" align="center">부향표</h2>
					<h4 class="major">※단위는 g(그램)입니다.</h4>
					<form>
						<table border="1" style="width: 1200px; height: 100px;">
							<tr id="nameTr">
								<td align="center" width="350px;">Note</td>
								<td style="width: 400px;">향료 이름</td>
								<td width="300px;">향료 무게(g)</td>
							</tr>

							<tr id="notetr1">
								<td align="center">Top Note</td>
								<td class="input">
								<select name="pname1"
										onchange="selectForm(this.options[this.selectedIndex].value)"
										style="width: 200">
										<option value="0">시트러스 버베나</option>
										<option value="1">만다린</option>
										<option value="2">베르가뭇</option>
										<option value="3">라임</option>
										<option value="4">티트리</option>
								</select></td>
								<td><input type="text" name="num1"></td>
							</tr>

							<tr id="notetr2">
								<td align="center">Middle Note</td>
								<td class="input">
								<select name="pname2">
										<option value="0">라벤더</option>
										<option value="1">시나몬</option>
										<option value="2">라일락</option>
										<option value="3">로즈마리</option>
										<option value="4">사이프러스</option>
								</select></td>
								<td><input type="text" name="num2"></td>
							</tr>

							<tr id="notetr3">
								<td align="center">Base Note</td>
								<td class="input">
								<select name="pname3">
										<option value="0">화이트 머스크</option>
										<option value="1">벤조인</option>
										<option value="2">샌달우드</option>
										<option value="3">타임</option>
										<option value="4">바닐라</option>
								</select></td>
								<td><input type="text" name="num3"></td>
							</tr>

							<tr id="sumTr">
								<td colspan="2">
									<button type="button" onclick="sum()">합계</button>
								</td>
								<td>
									<hr>
								</td>
							</tr>

							<tr align="center">
								<td colspan="3"><input type="submit" value="전송"></td>
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
				let num1 = $('input[name=num1]').val()
				let num2 = $('input[name=num2]').val()
				let num3 = $('input[name=num3]').val()
				
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
						
						$('hr').after('<p>' + res + '</p>');
					},
					error : function() { alert("error"); }
					
				});
				
			}
		
		</script>

	</form>

</body>
</html>
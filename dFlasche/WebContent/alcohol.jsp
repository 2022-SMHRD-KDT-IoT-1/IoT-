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
	font-size: 1.5em;
	font-weight: bold;
}
#EDP{
	font-family: 'fonts/gm.otf';
	font-size: 1.5em;
	font-weight: bold;
}
#EDT{
	font-family: 'fonts/gm.otf';
	font-size: 1.5em;
	font-weight: bold;
}
#EDC{
	font-family: 'fonts/gm.otf';
	font-size: 1.5em;
	font-weight: bold;
}

</style>

<script src="js/jquery-3.6.0.js"></script>

</head>
<body class="is-preload">

	<form action="note.jsp" method="post">
		<div id="wrapper">

			<!-- Header -->
			<header id="header">
				<a href="main.jsp" class="logo">d Flasche</a>
			</header>

			<!-- Nav -->
			<nav id="nav">
				<ul class="links">
					<li class="active"><a href="alcohol.jsp">알코올 농도 선택 페이지</a></li>
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
							원하는 지속시간에 따라 향수의 종류를 선택하시면 됩니다.<br>상세한 설명을 원하신다면 사진을 클릭해주세요!<br>
							가이드를 원하신다면 <a href="guideTemp.jsp">부향률 가이드</a>로 이동해주세요.
						</p>
					</header>

					<div onclick="show1()">
						<img width="180px;" height="360px;" src="images/perfume.png">
						<p id="perfume"></p>
					</div>
					<br>

					<div onclick="show2()">
						<img width="180px;" height="360px;" src="images/edp.png">
						<p id="EDP"></p>
					</div>
					<br>

					<div onclick="show3()">
						<img width="180px;" height="360px;" src="images/edt.png">
						<p id="EDT"></p>
					</div>
					<br>

					<div onclick="show4()">
						<img width="180px;" height="360px;" src="images/edc.png">
						<p id="EDC"></p>
					</div>

					<br>
					<div>
						<br> <label for="perfume">향수 종류 선택</label> <select>
							<option name="perfume">퍼퓸(Perfume)</option>
							<option name="perfume">오 드 퍼퓸(Eau de Perfume)</option>
							<option name="perfume">오 드 뚜왈렛(Eau de Toillette)</option>
							<option name="perfume">오 드 코롱(Eau de Cologne)</option>
						</select>
					</div>
					<br>
					
					<table>
						<tr>
							<td colspan="3" align="center"><input type="submit"
								value="다음"></td>
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
					$('#perfume').html('→ 알코올 99.5%와 향료 20%의 부향률로 지속시간 6시간 이상');
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
					$('#EDP').html('→ 알코올 90%와 향료 15%의 부향률로 지속시간5시간 이상');
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
					$('#EDT').html('→ 알코올 85%와 향료 10%의 부향률로 지속시간 3시간 이상');
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
					$('#EDC').html('→ 알코올 80%와 향료 5%의 부향률로 지속시간 2시간 이상');
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
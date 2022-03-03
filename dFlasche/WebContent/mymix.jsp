<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>My mix</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<script src="js/jquery-3.6.0.js"></script>
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
					<li class="active"><a href="mypage.jsp">My Page</a></li>
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
							아직 저장된 배합이 없어요!<br>나만의 레시피를 만들러 가볼까요?<br>
							<a href="alcohol.jsp">배합하기</a>로 이동해주세요.
						</p>
					</header>

					<img onclick="tip1()" src="images/santamaria.png"
						style="text-align: center; width: 90%;">
					<p id="comment1" style="text-align: left; font-size: 1.1rem;"></p>
		</section>
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
		
		function tip1(){
			$('#comment1').html(' <p style="font-size:0.9rem; margin-bottom:1rem;"> * 베이스 노트부터 차근차근 오일들을 섞어주시면 됩니다.</p> · 이 향수의 특징은 과즙의 <b>상큼함</b>과 비누로 몸을 씻고 난 뒤 잔향 같은 <b>은은함</b>이 어울리는 향기입니다.<br>· 화창하고 쨍한 <b>상큼 비누</b>라고 생각하시면 될 것 같습니다.<br> · <b>사계절 데일리</b>의 향으로도 안성 맞춤입니다.<br> <span> > 이 향으로 만들어 보시겠어요??</span> <a href="santamaria.jsp"><button type="button">YES</button></a>');
				
		}
	</script>


</body>
</html>
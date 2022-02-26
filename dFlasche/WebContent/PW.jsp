<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/noscript.css" />
<style>
ul {
	list-style: none;
}

.button.fit {
	display: block;
	margin: 0 0 1em 0;
	width: 100%;
}

#main>.post {
	padding: 4rem 8rem 6rem 8rem;
}

#main>.post header.major>.date {
	margin-top: -2rem;
}

#main>.post header.major>h1, #main>.post header.major h2 {
	font-size: 4rem;
	line-height: 1.1;
	margin: 0 0 2rem 0;
}

#main>.post.featured {
	text-align: center;
}
</style>
</head>
<body>

		<div id="wrapper">
			<!-- Main -->
			<div id="main">

				<!-- Post -->
				<section class="post" style="margin-top:5rem;">
					<header class="major">
						<h3 id="content">
							비밀번호 수정
						</h3>
					</header>		
					<form action="PwService" method="post">
					<table style="width:700px; margin:0 auto;">
						<tr>
							<td><span>현재 비밀번호</span></td>
							<td colspan="2"><input type="password" id=pw1 name="pw1"></td>
						</tr>
						<tr>
							<td><span>변경할 비밀번호</span></td>
							<td colspan="2"><input type="password" id=pw2 name="pw2"></td>
						</tr>
						<tr>
							<td><span>비밀번호 확인</span></td>
							<td colspan="2"><input type="password" id=pw3 name="pw3"></td>
						</tr>
						<tr>
						<td colspan="2" style="text-align:center;">
						<button type="button" onclick="next()">수정완료</button>
						</td>
						</tr>
					</table>
					</form>
					</section>
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
		function next(){
			var pw1 = document.querySelector('#pw1').value;
			var pw2 = document.querySelector('#pw2').value;
			var pw3 = document.querySelector('#pw3').value;
			
			if(pw2==pw3){
				document.querySelector('button').setAttribute('type','submit');
			}else{
				alert("비밀번호를 확인해주세요.");
			}
		}
		
		</script>
	
</body>
</html>

</body>
</html>
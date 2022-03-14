<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap');
p{
	font-family: 'Nanum Gothic Coding', monospace;	
}

#contact {
	margin-left:37%;
	margin-top:3%;
	
} 

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
} 

body {
	line-height: 1;
	background-image: url(../../images/overlay.png),
		linear-gradient(0deg, rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.1)),
		url(../../images/bg.jpg);
	background-color: white;
}

ol, ul {
	list-style: none;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

h2 {
	text-align: center;
	margin-top: 2rem;
	font-family: 'Gamja Flower', cursive;
}
/* //////////////////////////////////////////////// */
@media ( min-width : 992px) .px-lg-5 {
	padding-right:3rem !important;
	padding-left:3rem !important;
}
.px-4 {
	padding-right: 1.5rem !important;
	padding-left: 1.5rem !important;
}
@media ( min-width : 992px) .container-lg , . container-md , . container-sm , .container {
	max-width:960px;
}

@media ( min-width : 768px) .container-md , . container-sm , . container{
	max-width:720px;
}

@media ( min-width : 576px) .container-sm , . container {
	max-width:540px;
}

.container, .container-fluid, .container-xxl, .container-xl,
	.container-lg, .container-md, .container-sm {
	width: 100%;
	padding-right: var(- -bs-gutter-x, 0.75rem);
	padding-left: var(- -bs-gutter-x, 0.75rem);
	margin-right: auto;
	margin-left: auto;
}

*, *::before, *::after {
	box-sizing: border-box;
}

user agent stylesheet
div {
	display: block;
}
hr.divider {
    height: 0.2rem;
    max-width: 10rem;
    margin: 1.5rem auto;
    background-color: #f4623a;
    opacity: 1;
}
label{
	color:#f4623a;
	
}

</style>
</head>

<body style="background-color: baige;">

	<%
		MemberVO vo = (MemberVO) session.getAttribute("vo");
	%>


	<!-- <div class="content"> -->
	<nav id="nav" style="background-color: gray;">
		<ul class="links">
			<li><a href="main.jsp">d Flasche</a></li>
			<%if (vo == null) {%>
			
			<li><a href="Login.jsp">Login & Sign Up</a></li>
			
			<%}else if(vo!=null && vo.getM_id().equals("admin")){ %>
			
			<li><a class="active" href="goBoardMain">Community</a></li>
			<li><a class="active" href="goIngredientMain">Ingredient</a></li>
			<li><a href="mypage.jsp">My Page</a></li>
			<%}%>
		</ul>
		<ul class="icons">
			<%
				if (vo != null) {
			%>
			<li><%=vo.getM_nick()%>님</li>
		</ul>
		<ul class="actions small">
			<li><a href="LogoutService" class="button primary small"
				style="padding: 0 10px; margin: 0 5px;">Logout</a></li>
		</ul>
		<%
			}
		%>
	</nav>


	<!-- Contact-->
	<section class="page-section" id="contact">
		<div class="container px-4 px-lg-5">
		
	<form id="contactForm" action="writeIngredient" method="post" enctype="multipart/form-data">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-lg-8 col-xl-6 text-center">
					<h2 class="mt-0">향수 원료 저장하기!</h2>
					<hr class="divider" />
					<p class="text-muted mb-5">향수 목록을 보시려면 위쪽 향수 원료 Page를 눌러주세요!</p>
				</div>
			</div>
			<div class="row gx-4 gx-lg-5 justify-content-center mb-5" style="width:50%;">
				<div class="col-lg-6">
					
			
						<div class="form-floating mb-3">
							<input class="form-control" id="name" type="text" name="admin" value="admin"/>
								
							<label for="label">작성자</label>
							<div class="invalid-feedback" data-sb-feedback="name:required"></div>
						</div>
						
						<div class="form-floating mb-3">
							<input class="form-control" id="name" type="text" name="name"/>
							
							<label for="label">원료명</label>
								
							<div class="invalid-feedback" data-sb-feedback="email:required"></div>
							
						</div>
						
						<div class="form-floating mb-3">
							<input class="form-control" id="name" type="text" name="type"/>
							
							<label for="label">종류</label>
								
							<div class="invalid-feedback" data-sb-feedback="email:required"></div>
							
						</div>
						
						<div class="form-floating mb-3">
							<input class="form-control" id="name" type="file" name="file"/>
							
							<label for="label">원료 이미지</label>
								
							<div class="invalid-feedback" data-sb-feedback="email:required"></div>
							
						</div>
						
						<div class="form-floating mb-3">
							<textarea class="form-control" id="message" name="specialty" type="text"
								 style="height: 10rem"
								data-sb-validations="required"></textarea>
							<label for="label">특징</label>
							<div class="invalid-feedback" data-sb-feedback="message:required"></div>
						</div>
						
						<div class="d-grid">
							<input type="reset" value="초기화"> <input type="submit" value="등록하기">
						</div>
					</form>
				</div>
			</div>
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-lg-4 text-center mb-5 mb-lg-0">
					<i class="bi-phone fs-2 mb-3 text-muted"></i>
					<div>D Flasche</div>
				</div>
			</div>
		</div>
	</section>



	<!-- ///////////////////////////////////////////////////////////////////////////////////// -->
	<!-- <div >
		<form action="writeIngredient" method="post"
			enctype="multipart/form-data">
			<h2 style="text-align: center;">향수 원료 등록</h2>
			<table id="list">
				<tr>
					<td>작성자</td>
					<td><input type="text" name="admin"></td>
				</tr>
				<tr>
					<td>원료명</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>종류</td>
					<td><input type="text" name="type"></td>
				</tr>
				<tr>
					<td colspan="2"><input name="file" type="file"
						style="float: center;"></td>
				</tr>
				<tr>
					<td>특징</td>
					<td><textarea name="specialty" rows="3" style="resize: none;"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="reset" value="초기화"> <input
						type="submit" value="등록하기"></td>
				</tr>
			</table>
		</form>
	</div> -->

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>
<%@page import="java.util.List"%>
<%@page import="model.MemberVO"%>
<%@page import="model.PerfumeVO"%>
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

@import
	url('https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap')
	;

table.type1 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	margin: 20px 10px;
}

table.type1 th {
	font-family: 'Gamja Flower', cursive;
	font-size:1.3rem;
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border: 1px solid #ccc;
}

table.type1 td {
	font-family: 'Gamja Flower', cursive;
	font-size:1.1rem;
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border: 1px solid #ccc;
}

table.type1 {
border-collapse: collapse;
text-align: left;
line-height: 1.5;
border: 1px solid #ccc;
margin: 20px 10px;
}
table.type1 thead {
border-right: 1px solid #ccc;
border-left: 1px solid #ccc;
background-color: #C6AF81;
}
table.type1 thead th {
padding: 10px;
font-weight: bold;
vertical-align: top;
/* color: #fff; */
}
table.type1 tbody th {
width: 150px;
padding: 10px;
font-weight: bold;
vertical-align: top;
border-bottom: 1px solid #ccc;
background: #fcf1f4;
}
table.type1 td {
width: 350px;
padding: 10px;
vertical-align: top;
border-bottom: 1px solid #ccc;
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
	
			</nav>


			<!-- Main -->
			<div id="main">
			<% 
			
			MemberVO vo = (MemberVO)request.getAttribute("vo");
			List<PerfumeVO> list = (List<PerfumeVO>)request.getAttribute("list");
			%>
				
				<!-- Post -->
				<section class="post">
					<%if(list==null) {%>
					<header class="major">
						<p id="content">
							아직 저장된 배합이 없어요!<br>나만의 레시피를 만들러 가볼까요?<br>
							<a href="alcohol.jsp">배합하기</a>로 이동해주세요.
						</p>
					</header>
						<%}else{ %>
						<%for (PerfumeVO pvo : list) {%>
					<table class="type1" border="1" style="text-align: center;">
			<thead>
				<tr>
					<th scope="cols">이미지</th>
					<th scope="cols" colspan="3">향수 이름 : <%=pvo.getUp_title() %></th>
					
				</tr>
			</thead>
			</tbody>
			<tr>
				<td scope="row" rowspan="4" style="height:0;"> <div style="height:100%"><img style="height:100%" alt="" src="img/<%=pvo.getUp_file() %>"></div></td>
				<td colspan="3">상세 정보</td>
			</tr>			
			<tr>
				<td colspan="3"><div style="white-space:pre;"><%=pvo.getUp_content() %></td>
			</tr>
			</tbody>
<!-- 			<tr>
				<td colspan="2"></td>
				<td>탑노트<br>
					<img alt="" src="images/diptyquetopnote.png">
				</td>
			</tr>
			
			<tr>
				<td colspan="2"></td>
				<td >미들<br>
					<img alt="" src="images/diptyquemiddlenote.png">
				</td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td >베이스</td>
			</tr> -->
			
		</table>
						<%} %>
						<%} %>

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

</body>
</html>
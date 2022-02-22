<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assetsBoard/css/main.css" />
<link rel="stylesheet" href="assetsBoard/css/board.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<style type="text/css">
	#writer1{
		border-top-left-radius: 5px;
		border-bottom-left-radius: 5px;
		border-top-right-radius:5px;
		border-bottom-right-radius:5px;
		margin-right:-1px;
	}
	#writer2{
		border-top-left-radius: 5px;
		border-bottom-left-radius: 5px;
		border-top-right-radius:5px;
		border-bottom-right-radius:5px;
		margin-left:-1px;
		
	}
	#btn{
		position:fixed;
		bottom:0px;
		right:900px;	
	}
	
</style>

</head>
<body>

	<div id="board">
		<table id="list">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>시간</td>
			</tr>
	</div>
	
	<div id="btn">
		<a href="index.html"><button id="writer1">홈으로가기</button></a>
		<a href="community.jsp"><button id="writer2">작성하러가기</button></a>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>
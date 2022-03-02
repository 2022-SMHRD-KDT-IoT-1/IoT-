<%@page import="model.CommentVO"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Result Page</title>
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
	font-family: 'fonts/ng.otf';
	font-size: 1.4rem;
}

.nameTr {
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

<body>
	<%--  <% MemberVO vo=(MemberVO)session.getAttribute("vo"); %> --%>
	<%-- 댓글 목록 <% List<CommentVO> list = (List<CommentVO>)request.getAttribute("list"); %> --%>
				
			
		
	<div>
		<form action="commentService" method="post" enctype="multipart/form-data">

			<table border="1" style="width: 1200px; height: 100px;">
				<!-- 댓글 작성  -->
				
				<tr class="nameTr">
					<td>작성자</td>
					<td> <input type="text" name="comm_writer" placeholder="작성자" style="width:150px;"> </td>
				</tr>
				
				<tr></tr>
				
				<tr class="nameTr">
					<td>댓글 작성</td>
					<td> <input type="text" name="comm_content" placeholder="댓글을 작성해 주세요."> </td>
				</tr>
				
				<tr></tr>
				
				<tr class="nameTr">
					<td> <a href="commentList"><button id="commentlist" onclick="commentList()">댓글 목록</button></a> </td>
				</tr>
				<tr></tr>
				
				<tr class="nameTr">
					<td colspan="2">
						<input type="reset" value="초기화">
						<input type="submit" value="댓글작성">
					</td>
				</tr>
				
			</table>
		</form>

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
		
		function commentList(){
			
			$('#commentlist').html();
			
		}
	
	
	</script>

</body>
</html>
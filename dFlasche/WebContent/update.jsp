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
   <%
	MemberVO vo = (MemberVO)session.getAttribute("vo");
	out.print(vo);
	%>

		<div id="wrapper">
			<!-- Main -->
			<div id="main">

				<!-- Post -->
				<section class="post" style="margin-top:5rem;">
					<header class="major">
						<h3 id="content">
							ȸ������ ����
						</h3>
					</header>
					
					<form action="UpdateService" method="post">
					<table style="width:700px; margin:0 auto;">
						<tr>
							<td><span>�г���</span></td>
							<td><p style="text-align:center; margin:0;"><%=vo.getM_nick() %></p></td>
							<td></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="�����Ͻ� �г����� �Է��ϼ���" name="nick"></td>
							<td><button style="display:block;margin: 0 auto;">����</button></td>
						</tr>
						<tr>
							<td><span>��й�ȣ</span></td>
							<td><input type="password" placeholder="�����Ͻ� PW�� �Է��ϼ���" name="pw"></td>
							<td><button style="display:block;margin: 0 auto;">����</button></td>						
						</tr>
						<tr>
							<td><span>��ȭ��ȣ</span></td>
							<td><p style="text-align:center; margin:0;"><%=vo.getM_phone()%></p></td>
							<td></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="�����Ͻ� ��ȭ��ȣ�� �Է��ϼ���" name="tel"></td>
							<td><button style="display:block;margin: 0 auto;">����</button></td>												
						</tr>
						<tr>
							<td><span>�ּ�</span></td>
							<td><p style="text-align:center; margin:0;"><%=vo.getM_addr()%></p></td>
							<td></td>											
						</tr>
						<tr>
							<td colspan="2"><input type="text" placeholder="�����Ͻ� �ּҸ� �Է��ϼ���" name="addr"></td>
							<td><button style="display:block;margin: 0 auto;">����</button></td>	
						</tr>
						<tr>
						<td colspan="3"><a class="button fit" href="GoMain">HOME</a></td>
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
</body>
</html>
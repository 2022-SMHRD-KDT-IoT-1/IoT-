<%@page import="model.MessageVO"%>
<%@page import="java.util.List"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="EUC-KR" />
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>
	
	<%
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		out.print(vo);
		
		List<MessageVO> list = (List<MessageVO>)request.getAttribute("list");
	%>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header" class="alt">
						<a href="index.html" class="logo"><strong>Forty</strong> <span>by HTML5 UP</span></a>
						<nav>
							<%if(vo==null) {%>
								<a href="#menu">�α���</a>
							<%}else{%>
								<a href="goBoardMain">�Խ���</a>
								<a href="update.jsp">������������</a>
								<a href="logoutService">�α׾ƿ�</a>
							<%} %>
							<!-- �α��� �� Logout.jsp�� �̵��� �� �ִ�'�α׾ƿ�'��ũ�� '������������'��ũ�� ����Ͻÿ�. -->
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">	
						<ul class="links">
							<li><h5>�α���</h5></li>
								<form action="loginService" method="post">
									<li><input name="email" type="text"  placeholder="Email�� �Է��ϼ���"></li>
									<li><input name="pw" type="password"  placeholder="PW�� �Է��ϼ���"></li>
									<li><input type="submit" value="LogIn" class="button fit"></li>
								</form>
						</ul>
						<ul class="actions vertical">
							<li><h5>ȸ������</h5></li>
								<form action="joinService" method="post">
									<li>
									<input id="check" name="email" type="text"  placeholder="Email�� �Է��ϼ���">
									<p id="result"></p>
									<button type="button" onclick="emailCheck()">�ߺ� Ȯ��</button>
									</li>
									
									<li><input name="pw" type="password"  placeholder="PW�� �Է��ϼ���"></li>
									<li><input name="tel" type="text"  placeholder="��ȭ��ȣ�� �Է��ϼ���"></li>
									<li><input name="address" type="text"  placeholder="���ּҸ� �Է��ϼ���"></li>
									<li><input type="submit" value="JoinUs" class="button fit"></li>
								</form>
						</ul>
					</nav>			
				<!-- Banner -->
					<section id="banner" class="major">
						<div class="inner">
							<header class="major">
								<%if(vo==null) {%>
										<h1>�α����� ���ּ���</h1>
						     	<%}else{%>
						     			<h1><%=vo.getEmail() %>�� ȯ���մϴ�.</h1>
						     	<%} %>
								<!-- �α��� �� �α��� �� ������� ���Ǿ��̵�� �ٲٽÿ�.
									 ex)smart�� ȯ���մϴ� -->
							</header>
							<div class="content">
								<p>�Ʒ��� ���ݱ��� ��� �� ������Դϴ�.<br></p>
								<ul class="actions">
									<li><a href="#one" class="button next scrolly">Ȯ���ϱ�</a></li>
								</ul>
							</div>
						</div>
					</section>

				<!-- Main -->
					<div id="main">

						<!-- One -->
							<section id="one" class="tiles">
								<article>
									<span class="image">
										<img src="images/pic01.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">HTML</a></h3>
										<p>Ȩ�������� ����� ���� ���</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic02.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">CSS</a></h3>
										<p>HTML�� ���������ִ� ���</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic03.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">Servlet/JSP</a></h3>
										<p>Java�� �⺻���� �� �� ���α׷��� ���/��ũ��Ʈ ���</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic04.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">JavaScript</a></h3>
										<p>HTML�� �⺻���� ������ ������ �� �ִ� ���</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic05.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">MVC</a></h3>
										<p>�� ������Ʈ �� ���� ���� ����ϴ� ����������</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic06.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">Web Project</a></h3>
										<p>�������� ����������Ʈ�� �� ����� Ȱ���ϼ���!</p>
									</header>
								</article>
							</section>
					<!-- Two -->
							<section id="two">
								<div class="inner">
									<header class="major">
										<h2>������ �� �޼��� Ȯ���ϱ�</h2>
									</header>
									<p></p>
									<ul class="actions">
										<%if(vo==null) {%>
										<li>�α����� �ϼ���.</li>
										<%}else{ %>
											<!-- for�� �̿��ؼ� ��� -->
											<!-- for each�� == python for�� -->
											<!-- for �ڷ��� ���� : �迭 -->
											<%for(MessageVO mvo : list) {%>
											<li>
												<!-- list.get(i).getSend_name() -->
												<span><%=mvo.getSend_name() %></span><br>
												<span><%=mvo.getContent() %></span><br>
												<span><%=mvo.getSendDate() %></span><br>
											</li>
											<%} %>
										<%} %>
										<li><a href="#" class="button next scrolly">��ü�����ϱ�</a></li>
									</ul>
								</div>
							</section>

					</div>

				<!-- Contact -->
					<section id="contact">
						<div class="inner">
							<section>
								<form action="messageSend" method="post">	<!-- �Խñ��̳� �޽����� �뷮������ ���� post�� ������ �Ѵ�. -->
								<div class="field half first">
										<label for="name">Name</label>
										<input type="text" name = "send_name" id="name" placeholder="������ ��� �̸�" />
									</div>
									<div class="field half">
										<label for="email">Email</label>
										<input type="text" name = "receive_name"  id="email" placeholder="���� ��� �̸���"/>
									</div>

									<div class="field">
										<label for="message">Message</label>
										<textarea  name="content" id="message" rows="6"></textarea>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Send Message" class="special" /></li>
										<li><input type="reset" value="Clear" /></li>
									</ul>
								</form>
							</section>							
							<section class="split">
								<section>
									<div class="contact-method">
										<span class="icon alt fa-envelope"></span>
										<h3>Email</h3>
										<%if(vo==null) {%>
										<a href="#">�α��� �� ����� �̸����� ���</a>
										<%}else{ %>
										<a href="#"><%=vo.getEmail() %></a>
										<%} %>
										<!-- �α��� �� ������� �̸����� ����Ͻÿ� -->
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-phone"></span>
										<h3>Phone</h3>
										<%if(vo==null) {%>
										<span>�α��� �� ����� ��ȭ��ȣ�� ���</span>
										<%}else{ %>
										<span><%=vo.getTel()%></span>
										<%} %>
										<!-- �α��� �� ������� ��ȭ��ȣ�� ����Ͻÿ� -->
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-home"></span>
										<h3>Address</h3>
										<%if(vo==null) {%>
										<span>�α��� �� ����� ���ּҸ� ���</span>
										<%}else{ %>
										<span><%=vo.getAddress()%></span>
										<%} %>
										<!-- �α��� �� ������� ���ּҸ� ����Ͻÿ� -->
									</div>
								</section>
							</section>					
						</div>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<ul class="icons">
								<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon alt fa-linkedin"><span class="label">LinkedIn</span></a></li>
							</ul>
							<ul class="copyright">
								<li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
			<script type="text/javascript">
				function emailCheck(){
					
					// 1. email ��������
					let email = $('#check').val();
					
					// 2. ajax
					$.ajax({
						url : "checkService",
						type : "post",
						data : {
							'email' : email
						},
						success : function(res){
							
							console.log(res);
							
							if(res=='true'){
								// .css('�Ӽ���', '��') : �ش� �±��� css�� �ٲ��ִ� �Լ�
								// .attr('�Ӽ���', '��') : �±��� �Ӽ����� �������ִ� �Լ� ex) $('form').attr('action', 'loginService')
								$('#result').html('<span style=color:green>��밡���� �̸����Դϴ�.</span>');
								//$('#result').css('color', 'green');
							}else if(res=='false'){
								$('#result').html('<span style=color:red>�ߺ��� �̸����Դϴ�.</span>');
								//$('#result').css('color', 'red');
							}
							
							
						},
						error : function(){alert("error")}	// error �ݹ� �Լ��� �ʼ��� �ƴ����� �ִ� ���� ����.
					});
					
				}
			</script>
	</body>
</html>


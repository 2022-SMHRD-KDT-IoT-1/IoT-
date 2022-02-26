<%@page import="model.MemberVO" %>
	<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="EUC-KR">
			<title>Insert title here</title>
			<meta charset="utf-8" />
			<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
			<link rel="stylesheet" href="assets/css/main.css" />
			<noscript>
				<link rel="stylesheet" href="assets/css/noscript.css" />
			</noscript>
			<style type="text/css">


			</style>
		</head>

		<body class="is-preload">

			<% MemberVO vo=(MemberVO)session.getAttribute("vo"); out.print(vo); %>

				<!-- Wrapper -->
				<div id="wrapper" class="fade-in">

					<!-- Intro -->
					<div id="intro">
						<h1>d<br />
							flasche</h1>
						<p>나만의 향수를 직접 만들어보는<br /> Smart IoT Perfume</p>
						<!-- 			
							<ul class="actions">
								<li>
									<a href="#header" class="button icon solid solo fa-arrow-down scrolly">Continue</a>
								</li>
								</ul> 
		-->
					</div>

					<!-- Header -->
					<!-- 		<header id="header">
			<a href="main.jsp" class="logo">d Flasche</a>
		</header> -->

					<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							<li class="active"><a href="main.jsp">d Flasche</a></li>
							<%if(vo==null){%>
								<li><a href="Login.jsp">Login & Sign Up</a></li>
								<%}else{ %>
									<li><a href="alcohol.jsp">부향률 페이지</a></li>
									<li><a href="#">Elements Reference</a></li>
									<li><a href="#">Community</a></li>
									<li><a href="mypage.jsp">My Page</a></li>
									<%} %>
						</ul>
						<ul class="icons">
							<%if(vo!=null){%>
								<li>
									<%=vo.getM_nick()%>님
								</li>
						</ul>
						<ul class="actions small">
							<li><a href="LogoutService" class="button primary small"
									style="padding: 0 10px; margin:0 5px;">Logout</a></li>
						</ul>
						<%} %>
							<!-- 				<li><a href="https://ko-kr.facebook.com/"
					class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
				<li><a
					href="https://www.instagram.com/accounts/login/?source=auth_switcher"
					class="icon brands fa-instagram"><span class="label">Instagram</span></a></li> -->
							</ul>
					</nav>

				</div>

				<!-- 		<!-- Main -->
				<!-- <div id="main">

			Featured Post
			<article class="post featured">
				<header class="major">
					<span class="date">March 07, 2022</span>
					<h2>
						<a href="#">And this is a<br /> massive headline
						</a>
					</h2>
					<p>
						Aenean ornare velit lacus varius enim ullamcorper proin aliquam<br />
						facilisis ante sed etiam magna interdum congue. Lorem ipsum dolor<br />
						amet nullam sed etiam veroeros.
					</p>
				</header>
				<a href="#" class="image main"><img src="images/pic01.jpg"
					alt="" /></a>
				<ul class="actions special">
					<li><a href="#" class="button large">Full Story</a></li>
				</ul>
			</article>

			Posts
			<section class="posts">
				<article>
					<header>
						<span class="date">April 24, 2017</span>
						<h2>
							<a href="#">Sed magna<br /> ipsum faucibus
							</a>
						</h2>
					</header>
					<a href="#" class="image fit"><img src="images/pic02.jpg"
						alt="" /></a>
					<p>Donec eget ex magna. Interdum et malesuada fames ac ante
						ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet
						dolor mattis sagittis magna etiam.</p>
					<ul class="actions special">
						<li><a href="#" class="button">Full Story</a></li>
					</ul>
				</article>
				<article>
					<header>
						<span class="date">April 22, 2017</span>
						<h2>
							<a href="#">Primis eget<br /> imperdiet lorem
							</a>
						</h2>
					</header>
					<a href="#" class="image fit"><img src="images/pic03.jpg"
						alt="" /></a>
					<p>Donec eget ex magna. Interdum et malesuada fames ac ante
						ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet
						dolor mattis sagittis magna etiam.</p>
					<ul class="actions special">
						<li><a href="#" class="button">Full Story</a></li>
					</ul>
				</article>
				<article>
					<header>
						<span class="date">April 18, 2017</span>
						<h2>
							<a href="#">Ante mattis<br /> interdum dolor
							</a>
						</h2>
					</header>
					<a href="#" class="image fit"><img src="images/pic04.jpg"
						alt="" /></a>
					<p>Donec eget ex magna. Interdum et malesuada fames ac ante
						ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet
						dolor mattis sagittis magna etiam.</p>
					<ul class="actions special">
						<li><a href="#" class="button">Full Story</a></li>
					</ul>
				</article>
				<article>
					<header>
						<span class="date">April 14, 2017</span>
						<h2>
							<a href="#">Tempus sed<br /> nulla imperdiet
							</a>
						</h2>
					</header>
					<a href="#" class="image fit"><img src="images/pic05.jpg"
						alt="" /></a>
					<p>Donec eget ex magna. Interdum et malesuada fames ac ante
						ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet
						dolor mattis sagittis magna etiam.</p>
					<ul class="actions special">
						<li><a href="#" class="button">Full Story</a></li>
					</ul>
				</article>
				<article>
					<header>
						<span class="date">April 11, 2017</span>
						<h2>
							<a href="#">Odio magna<br /> sed consectetur
							</a>
						</h2>
					</header>
					<a href="#" class="image fit"><img src="images/pic06.jpg"
						alt="" /></a>
					<p>Donec eget ex magna. Interdum et malesuada fames ac ante
						ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet
						dolor mattis sagittis magna etiam.</p>
					<ul class="actions special">
						<li><a href="#" class="button">Full Story</a></li>
					</ul>
				</article>
				<article>
					<header>
						<span class="date">April 7, 2017</span>
						<h2>
							<a href="#">Augue lorem<br /> primis vestibulum
							</a>
						</h2>
					</header>
					<a href="#" class="image fit"><img src="images/pic07.jpg"
						alt="" /></a>
					<p>Donec eget ex magna. Interdum et malesuada fames ac ante
						ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet
						dolor mattis sagittis magna etiam.</p>
					<ul class="actions special">
						<li><a href="#" class="button">Full Story</a></li>
					</ul>
				</article>
			</section>  -->

				<!-- Footer-->
				<!-- <footer>
				<div class="pagination">
					<a href="#" class="previous">Prev</a>
					<a href="#" class="page active">1</a> <a href="#" class="page">2</a>
					<a href="#" class="page">3</a> <span class="extra">&hellip;</span>
					<a href="#" class="page">8</a> <a href="#" class="page">9</a> <a
						href="#" class="page">10</a> <a href="#" class="next">Next</a>
				</div>
			</footer>

		</div> 

		Footer
		<footer id="footer">
			<section>
				<form method="post" action="#">
					<div class="fields">
						<div class="field">
							<label for="name">Name</label> <input type="text" name="name"
								id="name" />
						</div>
						<div class="field">
							<label for="email">Email</label> <input type="text" name="email"
								id="email" />
						</div>
						<div class="field">
							<label for="message">Message</label>
							<textarea name="message" id="message" rows="3"></textarea>
						</div>
					</div>
					<ul class="actions">
						<li><input type="submit" value="Send Message" /></li>
					</ul>
				</form>
			</section>

			<section class="split contact">
				<section class="alt">
					<h3>Address</h3>
					<p>
						[본원] 광주 동구 예술길 31-15 광주아트센터 3,4,7층<br /> [분원] 광주 남구 송암로 60
						광주CGI센터 2층
					</p>
				</section>
				<section>
					<h3>Phone</h3>
					<p>
						<a href="#">062-655-3506</a>
					</p>
				</section>
				<section>
					<h3>Email</h3>
					<p>
						<a href="#">smhrd123@gmail.com</a>
					</p>
				</section>
				<section>
					<h3>Social</h3>
					<ul class="icons alt">
						<li><a href="https://twitter.com/i/flow/login"
							class="icon brands alt fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="https://ko-kr.facebook.com/"
							class="icon brands alt fa-facebook-f"><span class="label">Facebook</span></a></li>
						<li><a
							href="https://www.instagram.com/accounts/login/?source=auth_switcher"
							class="icon brands alt fa-instagram"><span class="label">Instagram</span></a></li>
					</ul>
				</section>
			</section>
		</footer>

		Copyright
		<div id="copyright">
			<ul>
				<li>&copy; Untitled</li>
				<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>

	</div>  -->

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
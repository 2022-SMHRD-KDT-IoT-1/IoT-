<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link
		href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
		rel="stylesheet">
	
	<link rel="stylesheet" href="fonts/icomoon/style.css">
	
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	
	<!-- Style -->
	<link rel="stylesheet" href="css/style.css">

</head>
<body>

	<form action="LoginService" method="post">
		<div class="content">
			<div class="container">
				<div class="row justify-content-center">
					<!-- <div class="col-md-6 order-md-2">
          <img src="images/undraw_file_sync_ot38.svg" alt="Image" class="img-fluid">
        </div> -->
					<div class="col-md-6 contents">
						<div class="row justify-content-center">
							<div class="col-md-12">
								<div class="form-block">
									<h3>
										Account <strong>Sign</strong>
									</h3>

									<div class="form-group first">
										<label for="ID">ID</label> <input type="text"
											class="form-control" id="id" name="id">

									</div>

									<div class="form-group last mb-4">
										<label for="password">Password</label> <input type="password"
											class="form-control" id="password" name="pw">
									</div>

									<div class="d-flex mb-5 align-items-center">
										<label class="control control--checkbox mb-0"><span
											class="caption">아이디 저장</span> <input type="checkbox"
											checked="checked" />
											<div class="control__indicator"></div> </label> <span class="ml-auto"><a
											href="#" class="forgot-pass">비밀번호 찾기</a></span>
									</div>

									<div class="d-flex mb-5 align-items-center">
										<span class="caption">계정이 없으신가요?</span>
										<div class="control__indicator"></div>
										</label> <span class="ml-auto"><a href="Join.jsp">회원가입</a></span>
									</div>

									<input type="submit" value="Log In"
										class="btn btn-pill text-white btn-block btn-primary">

									<span class="d-block text-center my-4 text-muted">다른
										방법으로 로그인</span>

									<div class="social-login text-center">
										<a href="https://ko-kr.facebook.com/" class="facebook"> <span
											class="icon-facebook mr-3"></span>
										</a> <a href="https://twitter.com/i/flow/login" class="twitter">
											<span class="icon-twitter mr-3"></span>
										</a> <a
											href="https://accounts.google.com/ServiceLogin/identifier?hl=ko&passive=true&continue=https%3A%2F%2Fwww.google.co.kr%2F&ec=GAZAmgQ&flowName=GlifWebSignIn&flowEntry=ServiceLogin"
											class="google"> <span class="icon-google mr-3"></span>
										</a>
										
                    <a href="https://nid.naver.com/nidlogin.login"><img style=width:50px;height:50px;position:relative;bottom:30px; src="images/naver.png"></a>
					<a href="https://www.epis.or.kr/api/sns/kakaoAPI"><img style=width:50px;height:50px;position:relative;bottom:30px; src="images/kakao.png"></a>
										
									</div>
	</div>
	</div>
	</div>

	</div>

	</div>
	</div>
	</div>


	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>


	</form>

</body>
</html>
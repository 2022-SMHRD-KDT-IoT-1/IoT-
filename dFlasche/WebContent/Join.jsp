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

<style>

.content{
height:100vh;
background-image: url("../../images/overlay.png"), linear-gradient(0deg, rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.1)), url("../../images/bg.jpg");
}

</style>

</head>
<body>

	<form action="JoinService" method="post">
		<div class="content">
			<div class="container">
				<div class="row justify-content-center">

					<div class="col-md-6 contents">
						<div class="row justify-content-center">
							<div class="col-md-12">
								<div class="form-block" style="background-color:#FFF0F5;">
									<h3>Sign Up</h3>

								<div class="form-group first">
									<label for="ID">ID</label> <input type="text" class="form-control" id="id" name="id">
									<button class="button primary small" type="button" id = "check" onclick="idCheck()">중복 확인</button>
									<p id="result"></p>
								</div>

								<div class="form-group last mb-4">
									<label for="password">Password</label> <input type="password" class="form-control" id="password" name="pw">
								</div>
								
								<div class="form-group last mb-4">
									<label for="name">Name</label> <input type="text" class="form-control" id="name" name="name">
								</div>
								
								<div class="form-group last mb-4">
									<label for="address">Address</label> <input type="text" class="form-control" id="address" name="addr">
								</div>
								
								<div class="form-group last mb-4">
									<label for="phone">Phone</label> <input type="text" class="form-control" id="Phone" name="phone">
								</div>
								
								<div class="form-group last mb-4">
									<label for="nick">닉네임</label> <input type="text" class="form-control" id="nick" name="nick">
								</div>
								
								<div class="form-group last mb-4">
									<br>
									<label for="gender">성별</label><br>
									<input class="input200" type="radio" name="gender" value="M">Man
									<input class="input200" type="radio" name="gender" value="W">WoMan
								</div>

								<input type="submit" value="Sign Up" 
										class="btn btn-pill text-white btn-block btn-primary">
	</div>
	</div>
	</div>

	</div>

	</div>
	</div>
	</div>

	</form>

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/jquery-3.6.0.js"></script>
	<script type="text/javascript">
		function idCheck() {
			
			// 1. email가져오기
			let id = $('#id').val();
			
			// 2. ajax
			$.ajax({
				url : "checkService",
				type : "post",
				data : {
					'id' : id
				},
				success : function(res) {
					
					console.log(res);
					
					if(res == 'true'){
						// 사용 가능한 아이디
						// .css('속성명', '값') : 해당 태그의 css를 바꿔주는 함수
						// .attr('속성명', '값') : 태그의 속성 값을 변경해주는 함수
						$('#result').html('사용가능한 아이디.');
						$('#result').css('color', 'green');
					}else{
						// 중복된 아이디
						$('#result').html('중복된 아이디입니다.');
						$('#result').css('color', 'red');
					}
					
					
				},
				error : function() { alert("error"); }
				
			});
			
		}	
		</script>
</body>
</html>
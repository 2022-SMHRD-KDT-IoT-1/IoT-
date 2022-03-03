<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
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
background-color: lightblue;
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
</head>

<body>

	<div>

		<table class="type1" border="1" style="text-align: center;">
			<thead>
				<tr>
					<th scope="cols">이미지 들어갈곳</th>
					<th scope="cols" colspan="3">내용</th>
					
				</tr>
			</thead>

			<tr>
				<td scope="row" rowspan="4"> <img alt="" src="images/diptyqueimg.png"> </td>
				<td colspan="3" >내가 지은 향수 이름 : <input type="text"> </td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td>탑노트<br>
					<!-- <img alt="" src="images/diptyquetopnote.png"> -->
				</td>
			</tr>
			
			<tr>
				<td colspan="2"></td>
				<td >미들<br>
					<!-- <img alt="" src="images/diptyquemiddlenote.png"> -->
				</td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td >베이스</td>
			</tr>
			
		</table>

	</div>
	
	



</body>
</html>
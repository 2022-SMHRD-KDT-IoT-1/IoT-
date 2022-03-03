<%@page import="model.IngredientVO"%>
<%@page import="model.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="EUC-KR">
<title>Insert title here</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
 <link rel="stylesheet" href="assets/css/main.css" />
 <noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript> 

<style type="text/css">

@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap')
	;
	
 .content {
	height: 100vh;
	background-image: url("../../images/overlay.png"),
		linear-gradient(0deg, rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.1)),
		url("../../images/bg.jpg");
	padding: 3px;
}  

.masonry-container {
    padding-top: 5rem;
    padding-bottom: 5rem;
    display: grid;
    max-width: 100rem;
    margin: 0 auto;
    gap: 2rem;
    grid-template-columns: repeat(auto-fit, minmax(30rem, 3fr));
    grid-auto-rows: 1rem;
}

@media screen and (max-width: 720px) {
    .masonry-container {
        grid-template-columns: repeat(2, 1fr);
    }
}

@media screen and (max-width: 400px) {
    .masonry-container {
      display: block;
        
    }

    .masonry-item {
        margin-bottom: var(--gap);
    }
}

img{
	width:300px;
	height:300px;
}

    #columns {
      display: inline-grid;
      column-width: 250px;
      border: 5px solid transparent;
      column-gap: 15px;
      color:white;
    }

    #columns figure {
      border: 1px solid rgba(0, 0, 0, 0.2);
      border-color:white;
      margin: 0;
      margin-bottom: 15px;
      margin-left: 55px;
      padding: 10px;
      box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
    }

    #columns figure img {
      width: 100%;
    }

    #columns .text {
      border-top: 1px solid rgba(0, 0, 0, 0.2);
      padding: 10px;
      margin-top: 10px;
    }

    #columns .title {
      border-bottom: 1px solid rgba(0, 0, 0, 0.7);
      padding: 5px;
      margin-bottom: 10px;
    }

/*     div img:hover img:not(:hover) {
      opacity: 0.4;
    } */

    @media screen and (max-width: 750px) {
      #columns {
        column-gap: 0px;
      }

      #columns figure {
        width: 100%;
      }
    }
    
    #titlep{
    	color:white; 
    	font-size:2.8rem;
    	font-family: 'Nanum Gothic Coding', monospace;
    	text-align: center;
    }
    
    #bodydiv{
    	background: #757F9A;  /* fallback for old browsers */
		background: -webkit-linear-gradient(to top, #D7DDE8, #757F9A);  /* Chrome 10-25, Safari 5.1-6 */
		background: linear-gradient(to top, #D7DDE8, #757F9A); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

    }
    
</style>
</head>

<body> <!-- 원료 한 번에 모아보기 -->

	
	 <% MemberVO vo = (MemberVO) session.getAttribute("vo"); 
	List<IngredientVO> list = (List<IngredientVO>) request.getAttribute("list"); %>
	 
	
	 <!-- <div class="content"> -->
			<nav id="nav">
				<ul class="links">
					<li><a href="main.jsp">d Flasche</a></li>
					<%if(vo==null){%>
					<li><a href="Login.jsp">Login & Sign Up</a></li>
					<%}else{ %>
					<li><a href="note.jsp">부향률 페이지</a></li>
					<li><a class="active" href="goBoardMain">Community</a></li>
					<li><a href="mypage.jsp">My Page</a></li>
					<li><a href="perfumeIngredient.jsp">원료 등록하기</a></li>
					<%} %>
				</ul>
				<ul class="icons">
					<%if(vo!=null){%>
					<li><%=vo.getM_nick()%>님</li>
				</ul>
				<ul class="actions small">
					<li><a href="LogoutService" class="button primary small"
						style="padding: 0 10px; margin: 0 5px;">Logout</a></li>
				</ul>
				<%} %>
			</nav>
			 
		<div id="bodydiv" style="margin-top:3rem;">
		 <p id = titlep>향수 원료 목록</p>    	
        <%for(IngredientVO ivo : list){ %>
        <div id="columns">
	     <figure style="text-align: center; width:80%;">
	      <figcaption class="title">no<%=ivo.getP_seq()%>.<%=ivo.getP_name() %></figcaption>
	      <figcaption class="text"><%=ivo.getP_date() %></figcaption>
	      	<a href="goViewIngredient?num=<%=ivo.getP_seq()%>">
			<img src="img/<%=ivo.getP_file()%>">
	      	</a>
	    </figure>
        </div>
      	<%} %>
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

	function masonryLayout() {
	    const masonryContainerStyle = getComputedStyle(
	        document.querySelector(".masonry-container")
	    );
	    const columnGap = parseInt(
	        masonryContainerStyle.getPropertyValue("column-gap")
	    );
	    const autoRows = parseInt(
	        masonryContainerStyle.getPropertyValue("grid-auto-rows")
	    );

	    document.querySelectorAll(".masonry-item").forEach((elt) => {
	        elt.style.gridRowEnd = `span ${Math.ceil(
	            elt.querySelector(".pseudo-img").scrollHeight / autoRows +
	                columnGap / autoRows
	        )}`;
	    });
	}

	masonryLayout();
	window.addEventListener("resize", masonryLayout);
	</script> 

</body>

</html>
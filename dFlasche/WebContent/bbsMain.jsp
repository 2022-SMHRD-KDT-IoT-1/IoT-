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
	width:500px;
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
      margin: 0;
      margin-bottom: 15px;
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
</style>
</head>

<body class="is-preload">

	<%
	MemberVO vo = (MemberVO) session.getAttribute("vo");
	List<BoardVO> list = (List<BoardVO>) request.getAttribute("list");
	%>
	
	 	<div class="content">
			<nav id="nav">
				<ul class="links">
					<li><a href="main.jsp">d Flasche</a></li>
					<%if(vo==null){%>
					<li><a href="Login.jsp">Login & Sign Up</a></li>
					<%}else{ %>
					<li><a href="alcohol.jsp">부향률 페이지</a></li>
					<li><a class="active" href="goBoardMain">Community</a></li>
					<li><a href="mypage.jsp">My Page</a></li>
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
			 
	<div class="masonry-container">
    	<div class="masonry-item">
            <div class="grid-item">
        <%for(BoardVO bvo : list){ %>
        <div id="columns">
	     <figure>
	      <figcaption class="title"><%=bvo.getM_id() %></figcaption>
	      <figcaption class="text"><%=bvo.getArticle_date()%></figcaption>
	      	<a href="goViewBoard?num=<%=bvo.getArticle_seq()%>">
			<img src="img/<%=bvo.getArticle_file1()%>">
	      	</a>
	      <figcaption class="like">
	      <% if (Integer.parseInt(bvo.getArticle_cnt()) == 0) {%> 
	      <div id="btn_like"><i id='dislike' class='far fa-heart' onclick="like()"></i>
	      <%}%><a href="main.jsp" style="color:white;"><i id="comment" class="fa-solid fa-comment" style="margin-left:10px;"></i></a></div> 
	      </figcaption>
	    </figure>
        </div>
      	<%} %>
		</div>
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
	<script src="js/jquery-3.6.0.js"></script>
	<script src="https://kit.fontawesome.com/42e9e6c485.js" crossorigin="anonymous"></script>
	
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
	
	<script type="text/javascript">
	
		function like(){
		const like = document.querySelector('#dislike');
		like.className = 'fas fa-heart';
		like.style.color = 'red';
		} 

		function dislike(){			
		if(like.className = 'fas fa-heart'){
		like.className = 'far fa-heart';
		like.style.color = 'white'; 
		}
		} 
	</script> 

</body>

</html>
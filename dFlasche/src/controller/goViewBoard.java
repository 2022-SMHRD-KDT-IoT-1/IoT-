package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;
import model.BoardVO;
import model.CommentVO;

@WebServlet("/goViewBoard")
public class goViewBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// 1. 파라미터 수집
		int article_seq = Integer.parseInt(request.getParameter("article_seq"));
		
		// 2. DAO 메서드 사용
		BoardDAO dao = new BoardDAO();
		BoardVO bvo = dao.viewBoard(article_seq);
		
		// 3. request scope에 저장
		request.setAttribute("bvo", bvo);
		
		// 4. 포워드방식으로 페이지 이동
		RequestDispatcher rd = request.getRequestDispatcher("commentList");
		rd.forward(request, response);
	
	}

}

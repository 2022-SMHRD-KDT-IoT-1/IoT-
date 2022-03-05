package controller;

import java.io.IOException;	
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BoardDAO;
import model.BoardVO;
import model.CommentDAO;
import model.CommentVO;

@WebServlet("/commentList")
public class commentList extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int article_seq = Integer.parseInt(request.getParameter("article_seq"));
		
		CommentDAO dao = new CommentDAO();

		List<CommentVO> list = dao.selectComment();
		
		request.setAttribute("list", list);
		

		// forward방식으로 페이지 이동
		RequestDispatcher rd = request.getRequestDispatcher("viewBBS.jsp");
		rd.forward(request, response); // 매개변수 고정
	}

}

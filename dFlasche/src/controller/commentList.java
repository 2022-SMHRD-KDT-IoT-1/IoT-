package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CommentDAO;
import model.CommentVO;

@WebServlet("/commentList")
public class commentList extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		CommentDAO dao = new CommentDAO();

		List<CommentVO> list = dao.selectComment();

		// request scope에 list 담기
		request.setAttribute("list", list);

		// forward방식으로 페이지 이동
		RequestDispatcher rd = request.getRequestDispatcher("comment.jsp");
		rd.forward(request, response); // 매개변수 고정
	}

}

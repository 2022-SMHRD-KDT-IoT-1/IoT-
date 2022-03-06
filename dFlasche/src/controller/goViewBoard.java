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
		
		
		// 1. �Ķ���� ����
		int article_seq = Integer.parseInt(request.getParameter("article_seq"));
		
		// 2. DAO �޼��� ���
		BoardDAO dao = new BoardDAO();
		BoardVO bvo = dao.viewBoard(article_seq);
		
		// 3. request scope�� ����
		request.setAttribute("bvo", bvo);
		
		// 4. ������������ ������ �̵�
		RequestDispatcher rd = request.getRequestDispatcher("commentList");
		rd.forward(request, response);
	
	}

}

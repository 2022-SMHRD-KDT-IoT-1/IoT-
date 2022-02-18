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

@WebServlet("/goViewBoard")
public class goViewBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 1. �Ķ���� ����
		int num = Integer.parseInt(request.getParameter("num"));
		
		// 2. DAO�޼ҵ� ���
		BoardDAO dao = new BoardDAO();
		BoardVO bvo = dao.viewBoard(num);
		
		// 3. request scope�� ����
		request.setAttribute("bvo", bvo);
		
		// 4. forward������� ������ �̵�
		RequestDispatcher rd = request.getRequestDispatcher("viewBoard.jsp");
		rd.forward(request, response);
	}

}

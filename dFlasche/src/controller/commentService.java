package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.SendResult;

import model.CommentDAO;
import model.CommentVO;

@WebServlet("/commentService")
public class commentService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		request.setCharacterEncoding("euc-kr");
		
		// queryString���� ������ seq �Ķ���� ����
		int article_seq = Integer.parseInt(request.getParameter("article_seq"));
		
		String m_id = request.getParameter("comm_writer"); 
		String comm_content = request.getParameter("comm_content");

		System.out.println(m_id);
		System.out.println(comm_content);

		CommentVO cvo = new CommentVO(m_id, comm_content);
		// setter�̿� �ؼ� ����־��ֱ�
		cvo.setarticle_seq(article_seq);

		CommentDAO dao = new CommentDAO();

		int cnt = dao.writeContent(cvo);

		if (cnt > 0) {
			System.out.println("�Է¼���");
			request.setAttribute("cvo", cvo);
			RequestDispatcher rd = request.getRequestDispatcher("goBoardMain");
			rd.forward(request, response);

		} else {
			System.out.println("�Է� ����");
			response.sendRedirect("bbsMain.jsp");
		}

	}

}
package controller;

import java.io.IOException;
import java.util.List;

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
		
		request.setCharacterEncoding("euc-kr");
		
		String m_id = request.getParameter("comm_writer");
		String comm_content = request.getParameter("comm_content");
		
		System.out.println(m_id);
		System.out.println(comm_content);
		
		CommentVO vo = new CommentVO(comm_content, m_id);
		
		CommentDAO dao = new CommentDAO();
		int cnt = dao.writeContent(vo);

		if (cnt > 0) {
			System.out.println("입력성공");
			response.sendRedirect("main.jsp");
		} else {
			System.out.println("입력 실패");
			response.sendRedirect("comment.jsp");
		
		}

	}

}

package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberVO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String m_id = request.getParameter("id");
		String m_pw = request.getParameter("pw");
		String m_name = request.getParameter("name");
		String m_addr = request.getParameter("addr");
		String m_phone = request.getParameter("phone");
		String m_nick = request.getParameter("nick");
		String m_gender = request.getParameter("gender");

		MemberVO vo = new MemberVO(m_id, m_pw, m_name, m_addr, m_phone, m_nick, m_gender);
		
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.join(vo);
		
		if(cnt>0) {
			response.sendRedirect("main.jsp");
		}else {
			response.sendRedirect("join.html");
		}


	}

}

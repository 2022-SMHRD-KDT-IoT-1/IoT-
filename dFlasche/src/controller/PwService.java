package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberVO;

@WebServlet("/PwService")
public class PwService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		MemberVO uvo = (MemberVO)session.getAttribute("vo");
		String m_id = uvo.getM_id();

		String m_pw = request.getParameter("pw2");
		
		MemberVO vo = new MemberVO(m_id, m_pw);

		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.pwUp(vo);
		
		if(cnt>0) {
			session.setAttribute("vo", vo);
		}else {
			response.sendRedirect("PW.jsp");
		}

		RequestDispatcher rd = request.getRequestDispatcher("GoMain");
		rd.forward(request, response);
		
	}

}
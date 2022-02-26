package controller;

import java.io.IOException;	
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberVO;

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");

		HttpSession session = request.getSession();
		MemberVO uvo = (MemberVO)session.getAttribute("vo");
		String m_id = uvo.getM_id();
		
		String m_nick = request.getParameter("nick");
		String m_phone = request.getParameter("tel");
		String m_addr = request.getParameter("addr");

		MemberVO vo = new MemberVO(m_id, m_phone, m_addr, m_nick);

		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.update(vo);
		
		if(cnt>0) {
			session.setAttribute("vo", vo);
			response.sendRedirect("GoMain");
		}else {
			response.sendRedirect("update.jsp");
		}
		

//		if(m_nick != null) {
//			vo = new MemberVO();
//			vo.setM_id(m_id);
//			vo.setM_nick(m_nick);
//			int cnt = dao.nickup(vo);
//			
//			if(cnt>0) {
//				response.sendRedirect("main.jsp");
//			}else {
//				response.sendRedirect("update.jsp");
//			}
//			
//		}
//		if(m_pw != null) {
//			vo = new MemberVO();
//			vo.setM_id(m_id);
//			vo.setM_pw(m_pw);
//			int cnt = dao.pwup(vo);
//			
//			if(cnt>0) {
//				response.sendRedirect("main.jsp");
//			}else {
//				response.sendRedirect("update.jsp");
//			}
//		}
//		if(m_phone != null) {
//			vo = new MemberVO();
//			vo.setM_id(m_id);
//			vo.setM_phone(m_phone);
//			int cnt = dao.phoneup(vo);
//			
//			if(cnt>0) {
//				response.sendRedirect("main.jsp");
//			}else {
//				response.sendRedirect("update.jsp");
//			}
//		}
//		if(m_addr != null) {
//			vo = new MemberVO();
//			vo.setM_id(m_id);
//			vo.setM_addr(m_addr);
//			int cnt = dao.addrup(vo);
//			
//			if(cnt>0) {
//				response.sendRedirect("main.jsp");
//			}else {
//				response.sendRedirect("update.jsp");
//			}
//		}
		
		
		
		
	}

}
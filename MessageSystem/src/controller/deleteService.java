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
@WebServlet("/deleteService")
public class deleteService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
//		String email = vo.getEmail();		
//		vo = new MemberVO(email);
		
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.delete(vo.getEmail());
		
		if(cnt>0) {
			session.removeAttribute("vo");
			response.sendRedirect("logoutService");
		}else {
			response.sendRedirect("goMain");
		}
	}

}

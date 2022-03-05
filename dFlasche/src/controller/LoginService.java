package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberVO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String m_id = request.getParameter("id");
		String m_pw = request.getParameter("pw");
		
		MemberVO vo = new MemberVO(m_id, m_pw);
		
		MemberDAO dao = new MemberDAO();
		vo = dao.login(vo);

		if(vo != null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("vo", vo);
			System.out.println("로그인 성공");
			System.out.println(vo.getM_id());
			
			RequestDispatcher rd = request.getRequestDispatcher("GoMain");
			rd.forward(request, response);
			
		}else {
			System.out.println("로그인 실패");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('아이디 혹은 비밀번호를 확인해주세요'); location.href='"+"Login.jsp"+"';</script>");
			writer.close();
			
		}
		
		
	}

}

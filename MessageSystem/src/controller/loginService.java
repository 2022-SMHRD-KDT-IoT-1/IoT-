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

@WebServlet("/loginService")
public class loginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. 파라미터 수집
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		MemberVO vo = new MemberVO(email, pw);
		
		// DAO의 로그인 메소드 사용
		MemberDAO dao = new MemberDAO();
		MemberVO uvo = dao.login(vo);

		// 성공했는지 실패했는지 판단
		// 성공했으면 session에 DB에서 꺼내온 유저정보를 저장
		// 실패하면 저장X
		if(uvo != null) {
			// 성공
			// 성공했으면 session에 DB에서 꺼내온 유저정보를 저장

			HttpSession session = request.getSession();
			session.setAttribute("vo", uvo);

		}else {
			// 실패하면 저장X
			// 실패
		}

		// main.jsp로 이동
		response.sendRedirect("goMain");
	}

}

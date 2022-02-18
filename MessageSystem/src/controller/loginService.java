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

		// 1. �Ķ���� ����
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		MemberVO vo = new MemberVO(email, pw);
		
		// DAO�� �α��� �޼ҵ� ���
		MemberDAO dao = new MemberDAO();
		MemberVO uvo = dao.login(vo);

		// �����ߴ��� �����ߴ��� �Ǵ�
		// ���������� session�� DB���� ������ ���������� ����
		// �����ϸ� ����X
		if(uvo != null) {
			// ����
			// ���������� session�� DB���� ������ ���������� ����

			HttpSession session = request.getSession();
			session.setAttribute("vo", uvo);

		}else {
			// �����ϸ� ����X
			// ����
		}

		// main.jsp�� �̵�
		response.sendRedirect("goMain");
	}

}

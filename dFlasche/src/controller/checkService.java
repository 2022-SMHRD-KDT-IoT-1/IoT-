package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberVO;

/**
 * Servlet implementation class checkService
 */
@WebServlet("/checkService")
public class checkService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. ���ڵ�
		request.setCharacterEncoding("UTF-8");

		// 1. �Ķ���� ����
		String id = request.getParameter("id");

		// 2. DAO ���
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.idCheck(id);
		
		// 3. ����
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		// vo�� ��������� out.print(true); --> ��밡���� ���̵�
		// vo�� ������� ������ out.print(false); --> �ߺ��� ���̵�
		out.print( vo == null );
	
	}

}

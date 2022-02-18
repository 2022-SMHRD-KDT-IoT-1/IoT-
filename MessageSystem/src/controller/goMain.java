package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberVO;
import model.MessageDAO;
import model.MessageVO;

@WebServlet("/goMain")
public class goMain extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// �������κ��� vo ��������
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");

		if(vo != null) {
			// �α��� ����
			// �α������� ���� �޽����� �ҷ�����

			MessageDAO dao = new MessageDAO();
			List<MessageVO> list = dao.selectMessage(vo.getEmail());
			System.out.println("�޽��� �ҷ����� ����");

			// List ��ü�� main.jsp�� �Ѱ��ֱ�
			// request scope�� ��Ƽ� �̵�
			request.setAttribute("list", list);

		}else {
			// �α׾ƿ� ����
		}

		RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		rd.forward(request, response);
	}

}
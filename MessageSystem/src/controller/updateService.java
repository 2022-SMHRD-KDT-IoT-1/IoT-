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

@WebServlet("/updateService")
public class updateService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// post����� ���ڵ�
		request.setCharacterEncoding("euc-kr");
		
		// ���ǿ� ����� email ��������
		HttpSession session = request.getSession();
		MemberVO uvo = (MemberVO)session.getAttribute("vo");
		String email = uvo.getEmail();

		// �Ķ���� �������� form�±׸� ���ؼ� ���� �� �ޱ�
		String pw = request.getParameter("pw"); 
		String tel = request.getParameter("tel"); 
		String address = request.getParameter("address"); 
		
		MemberVO vo = new MemberVO(email, pw, tel, address);
		
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.update(vo);
		
		if(cnt > 0) {
	    	// ����
			session.setAttribute("vo", vo);
	    	response.sendRedirect("goMain");
	    }else {
	    	// ����
	    	response.sendRedirect("update.jsp");
	    }
	    }
	
	}


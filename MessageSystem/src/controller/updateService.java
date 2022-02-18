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
		
		// post방식의 인코딩
		request.setCharacterEncoding("euc-kr");
		
		// 세션에 저장된 email 가져오기
		HttpSession session = request.getSession();
		MemberVO uvo = (MemberVO)session.getAttribute("vo");
		String email = uvo.getEmail();

		// 파라미터 수집으로 form태그를 통해서 보낸 값 받기
		String pw = request.getParameter("pw"); 
		String tel = request.getParameter("tel"); 
		String address = request.getParameter("address"); 
		
		MemberVO vo = new MemberVO(email, pw, tel, address);
		
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.update(vo);
		
		if(cnt > 0) {
	    	// 성공
			session.setAttribute("vo", vo);
	    	response.sendRedirect("goMain");
	    }else {
	    	// 실패
	    	response.sendRedirect("update.jsp");
	    }
	    }
	
	}


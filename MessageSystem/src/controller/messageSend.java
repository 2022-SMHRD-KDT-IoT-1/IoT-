package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MessageDAO;
import model.MessageVO;
@WebServlet("/messageSend")
public class messageSend extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String send_name = request.getParameter("send_name");
		String receive_name = request.getParameter("receive_name");
		String content = request.getParameter("content");
		
		MessageVO mvo = new MessageVO(send_name, receive_name, content);
		
		MessageDAO dao = new MessageDAO();
		
		int cnt = dao.messageSend(mvo);
		
		if(cnt>0) {
			System.out.println("전송성공");
		}else {
			System.out.println("전송실패");
		}
		
		response.sendRedirect("goMain");
		
	}

}

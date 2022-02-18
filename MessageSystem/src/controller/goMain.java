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

		// 세션으로부터 vo 가져오기
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");

		if(vo != null) {
			// 로그인 상태
			// 로그인했을 때만 메시지를 불러오기

			MessageDAO dao = new MessageDAO();
			List<MessageVO> list = dao.selectMessage(vo.getEmail());
			System.out.println("메시지 불러오기 성공");

			// List 객체를 main.jsp로 넘겨주기
			// request scope에 담아서 이동
			request.setAttribute("list", list);

		}else {
			// 로그아웃 상태
		}

		RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		rd.forward(request, response);
	}

}
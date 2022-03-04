package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PerfumeDAO;
import model.PerfumeVO;

@WebServlet("/myList")
public class myList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// DAO 메서드 사용 -> 모든 게시글 가져오기
		PerfumeDAO dao = new PerfumeDAO();
		List<PerfumeVO> list = dao.selectMine();
		
		// request scope에 list 담기
		request.setAttribute("list", list);
		
		// 포워드 방식으로 페이지 이동
		RequestDispatcher rd = request.getRequestDispatcher("mymix.jsp");
		rd.forward(request, response);
	
	}

}

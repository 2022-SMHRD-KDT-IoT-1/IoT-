package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.IngredientDAO;
import model.IngredientVO;

@WebServlet("/DeleteIngredient")
public class DeleteIngredient extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		IngredientVO vo = (IngredientVO)request.getAttribute("vo");
		
		IngredientDAO dao = new IngredientDAO();
		int cnt = dao.deleteIngredient(vo.getP_seq());
		
		if(cnt > 0) {
			response.sendRedirect("IngredientMain");
		}else {
			response.sendRedirect("main.jsp");
		}
		
	}

}

package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.IngredientDAO;
import model.IngredientVO;

@WebServlet("/goIngredientMain")
public class goIngredientMain extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		IngredientDAO dao = new IngredientDAO();
		List<IngredientVO> list = dao.selectIngredient();
		
		
		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("IngredientMain.jsp");
		rd.forward(request, response);
		
		
		
	}

}

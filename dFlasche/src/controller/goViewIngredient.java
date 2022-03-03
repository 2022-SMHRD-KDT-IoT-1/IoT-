package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.IngredientDAO;
import model.IngredientVO;

@WebServlet("/goViewIngredient")
public class goViewIngredient extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt((request.getParameter("num")));
		
		IngredientDAO dao = new IngredientDAO();
		IngredientVO ivo = dao.viewIngredient(num);
		
		request.setAttribute("ivo", ivo);
		
		RequestDispatcher rd = request.getRequestDispatcher("viewIngredient.jsp");
		rd.forward(request, response);
		
	}

}

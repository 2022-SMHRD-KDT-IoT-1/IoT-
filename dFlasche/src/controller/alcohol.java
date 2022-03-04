package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/alcohol")
public class alcohol extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String alcohol = request.getParameter("alcohol");
		
		if(alcohol.equals("0")) { 
			alcohol = "ÆÛÇ¾(Perfume - ¾ËÄÚ¿Ã80%)"; 
			System.out.println(alcohol); 
		}else if (alcohol.equals("1")) {
			alcohol = "¿À µå ÆÛÇ¾(Eau de Perfume - ¾ËÄÚ¿Ã85%)";
		}else if (alcohol.equals("2")) {
			alcohol = "¿À µå ¶Ñ¿Ð·¿(Eau de Toillette - ¾ËÄÚ¿Ã90%)";
		}else if (alcohol.equals("3")) {
			alcohol = "¿À µå ÄÚ·Õ(Eau de Cologne - ¾ËÄÚ¿Ã95%)";
		}
		
		session.setAttribute("alcohol", alcohol);
		
		RequestDispatcher rd = request.getRequestDispatcher("note.jsp");
		rd.forward(request, response);
	}
}

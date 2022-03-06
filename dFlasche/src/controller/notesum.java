package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/notesum")
public class notesum extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		Float num1 = Float.parseFloat(request.getParameter("num1"));
		Float num2 = Float.parseFloat(request.getParameter("num2"));
		Float num3 = Float.parseFloat(request.getParameter("num3"));
		
		Float result = num1 + num2 + num3;
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(result + "g");
		
	}

}

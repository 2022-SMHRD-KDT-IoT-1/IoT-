package controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberVO;

@WebServlet("/result")
public class result extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String pname1 = request.getParameter("pname1");
		String pname2 = request.getParameter("pname2");
		String pname3 = request.getParameter("pname3");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String num3 = request.getParameter("num3");
		
		
		
		if(pname1.equals("0")) { 
			pname1 = "��Ʈ���� ������"; 
			System.out.println(pname1); 
		}else if (pname1.equals("1")) {
			pname1 = "���ٸ�";
		}else if (pname1.equals("2")) {
			pname1 = "��������";
		}else if (pname1.equals("3")) {
			pname1 = "����";
		}else if (pname1.equals("4")) {
			pname1 = "ƼƮ��";
		}
		
		if(pname2.equals("0")) { 
			pname2 = "�󺥴�"; 
			System.out.println(pname2); 
		}else if (pname2.equals("1")) {
			pname2 = "�ó���";
		}else if (pname2.equals("2")) {
			pname2 = "���϶�";
		}else if (pname2.equals("3")) {
			pname2 = "�����";
		}else if (pname2.equals("4")) {
			pname2 = "����������";
		}
		
		if(pname3.equals("0")) { 
			pname3 = "ȭ��Ʈ �ӽ�ũ"; 
			System.out.println(pname3); 
		}else if (pname3.equals("1")) {
			pname3 = "������";
		}else if (pname3.equals("2")) {
			pname3 = "���޿��";
		}else if (pname3.equals("3")) {
			pname3 = "Ÿ��";
		}else if (pname3.equals("4")) {
			pname3 = "�ٴҶ�";
		}
		
		session.setAttribute("pname1", pname1);
		session.setAttribute("pname2", pname2);
		session.setAttribute("pname3", pname3);
		session.setAttribute("num1", num1);
		session.setAttribute("num2", num2);
		session.setAttribute("num3", num3);
		
		// ������ ������� �̵�
		RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
		rd.forward(request, response);		
	}

}

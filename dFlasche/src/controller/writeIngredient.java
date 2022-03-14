package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.IngredientDAO;
import model.IngredientVO;

@WebServlet("/writeIngredient")
public class writeIngredient extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1) ������ ������ ���
		String savePath = request.getServletContext().getRealPath("img");
		
		int maxSize = 1024 * 1024 * 5;
		
		String encoding = "EUC-KR";
		
		MultipartRequest multi = new MultipartRequest(request, 
				savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		// 1. �Ķ���� ����
		String p_type = multi.getParameter("type");
		String p_name = multi.getParameter("name");
		String p_specialty = multi.getParameter("specialty");
		String p_file = multi.getFilesystemName("file");
		String m_id = multi.getParameter("admin");
	
		IngredientVO vo = new IngredientVO(p_type ,p_name, p_specialty, p_file, m_id);
		
		IngredientDAO dao = new IngredientDAO();
		int cnt = dao.writeIngredient(vo);
		
		System.out.println(m_id);
		System.out.println(p_name);
		
		if(cnt > 0) {
			// ����
			System.out.println("�Է¼���");
			response.sendRedirect("goIngredientMain");
		}else {
			System.out.println("�Է½���");
			response.sendRedirect("perfumeIngredient.jsp");
		}
		
	
	}

}

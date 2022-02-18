package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.BoardDAO;
import model.BoardVO;

@WebServlet("/writeService")
public class writeService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. �Ķ���� ����

		// 1) ������ ������ ���
		String savePath= request.getServletContext().getRealPath("img");

		// 2) �ִ� ũ��
		int maxSize = 1024 * 1024 * 5; // 5MB

		// 3) ���ڵ� Ÿ��
		String encoding = "euc-kr";
		
		MultipartRequest multi = new MultipartRequest(request, 
				savePath, 
				maxSize, 
				encoding, 
				new DefaultFileRenamePolicy() // �ߺ� ����
				);
		
		// request.getParameter("name"); �� ����
		String title = multi.getParameter("title");
		String writer = multi.getParameter("writer");
		String content = multi.getParameter("content");
		
		// �����̸� ��������
		// multi.getFilesystemName();
		String fileName = multi.getFilesystemName("file");

		BoardVO vo = new BoardVO(writer, title, fileName, content);

		// DAO �޼��� ���
		BoardDAO dao = new BoardDAO();
		int cnt = dao.writeBoard(vo);

		if(cnt>0) {
			System.out.println("�Խñ� �ۼ� ����");	// �����
			response.sendRedirect("goBoardMain");
		}else {
			System.out.println("�Խñ� �ۼ� ����");
			response.sendRedirect("writerBoard.jsp");
		}

	}

}
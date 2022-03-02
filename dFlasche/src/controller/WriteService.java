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
@WebServlet("/WriteService")
public class WriteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String savePath = request.getServletContext().getRealPath("img");
		
		int maxSize = 1024 * 1024 * 5;
		
		String encoding = "EUC-KR";
		
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
	
		String article_subject = multi.getParameter("title");
		String m_id = multi.getParameter("writer");
		String article_content = multi.getParameter("content");
		
		String article_file1 = multi.getFilesystemName("file1");
		String article_file2 = multi.getFilesystemName("file2");
		
		if(article_file1==null) {
			article_file1 = "0";
		}
		if(article_file2==null) {
			article_file2 = "0";
		}
		
		System.out.println(article_file1);
		System.out.println(article_file2);
		BoardVO vo = new BoardVO(article_subject, article_content, article_file1, article_file2, m_id);

		BoardDAO dao = new BoardDAO();
		int cnt = dao.writeBoard(vo);
		
		
		if(cnt > 0) {
			// 성공
			System.out.println("게시글 작성 성공");
			response.sendRedirect("writeBBS.jsp");
		}else {
			// 실패
			System.out.println("게시글 작성 실패");
			//response.sendRedirect("writerBoard.jsp");
		}
	}
	
	}


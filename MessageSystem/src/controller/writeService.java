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

		// 1. 파라미터 수집

		// 1) 저장할 폴더의 경로
		String savePath= request.getServletContext().getRealPath("img");

		// 2) 최대 크기
		int maxSize = 1024 * 1024 * 5; // 5MB

		// 3) 인코딩 타입
		String encoding = "euc-kr";
		
		MultipartRequest multi = new MultipartRequest(request, 
				savePath, 
				maxSize, 
				encoding, 
				new DefaultFileRenamePolicy() // 중복 방지
				);
		
		// request.getParameter("name"); 와 같음
		String title = multi.getParameter("title");
		String writer = multi.getParameter("writer");
		String content = multi.getParameter("content");
		
		// 파일이름 가져오기
		// multi.getFilesystemName();
		String fileName = multi.getFilesystemName("file");

		BoardVO vo = new BoardVO(writer, title, fileName, content);

		// DAO 메서드 사용
		BoardDAO dao = new BoardDAO();
		int cnt = dao.writeBoard(vo);

		if(cnt>0) {
			System.out.println("게시글 작성 성공");	// 디버깅
			response.sendRedirect("goBoardMain");
		}else {
			System.out.println("게시글 작성 실패");
			response.sendRedirect("writerBoard.jsp");
		}

	}

}
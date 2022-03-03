package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.MemberVO;
import model.PerfumeDAO;
import model.PerfumeVO;

@WebServlet("/record")
public class record extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
		String savePath = request.getServletContext().getRealPath("img");
		
		int maxSize = 1024 * 1024 * 5;
		
		String encoding = "EUC-KR";
		
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		
		String up_title = multi.getParameter("title");
		String up_content = multi.getParameter("content");
		//String m_id = vo.getM_id();
		
		String up_file = multi.getFilesystemName("file");
		
		PerfumeVO pvo = new PerfumeVO(up_title, up_content, up_file);
		
		PerfumeDAO dao = new PerfumeDAO();
		
		//System.out.println(m_id);
		
		int cnt = dao.write(pvo);
		
		if(cnt>0) {
			System.out.println("작성 성공");
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("실패");
		}

	}

}

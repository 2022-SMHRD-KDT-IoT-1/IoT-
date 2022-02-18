package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberVO;

@WebServlet("/joinService")
public class joinService extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    // 0. 인코딩
    request.setCharacterEncoding("euc-kr");
    
    // 1. 파라미터 수집
    String email = request.getParameter("email");
    String pw = request.getParameter("pw");
    String tel = request.getParameter("tel");
    String address = request.getParameter("address");

    MemberVO vo = new MemberVO(email, pw, tel, address);

    // 2. DAO에 넘겨줘서 DB에 저장
    MemberDAO dao = new MemberDAO();

    int cnt = dao.join(vo);
    // insert into msg_member values(?, ?, ?, ?)
    // insert - > psmt.executeUpdate(); -> int (몇행 변화가 일어났는지)

    // 3. 성공여부를 판단해서 
    // 		성공 : join_sucess.jsp
    //		실패 : main.jsp
    
    if(cnt > 0) {
    	// 성공
    	response.sendRedirect("join_success.jsp");
    }else {
    	// 실패
    	response.sendRedirect("goMain");
    }
    }


}
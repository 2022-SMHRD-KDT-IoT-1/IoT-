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
    
    // 0. ���ڵ�
    request.setCharacterEncoding("euc-kr");
    
    // 1. �Ķ���� ����
    String email = request.getParameter("email");
    String pw = request.getParameter("pw");
    String tel = request.getParameter("tel");
    String address = request.getParameter("address");

    MemberVO vo = new MemberVO(email, pw, tel, address);

    // 2. DAO�� �Ѱ��༭ DB�� ����
    MemberDAO dao = new MemberDAO();

    int cnt = dao.join(vo);
    // insert into msg_member values(?, ?, ?, ?)
    // insert - > psmt.executeUpdate(); -> int (���� ��ȭ�� �Ͼ����)

    // 3. �������θ� �Ǵ��ؼ� 
    // 		���� : join_sucess.jsp
    //		���� : main.jsp
    
    if(cnt > 0) {
    	// ����
    	response.sendRedirect("join_success.jsp");
    }else {
    	// ����
    	response.sendRedirect("goMain");
    }
    }


}
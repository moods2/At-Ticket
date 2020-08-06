package com.test.user.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.atticket.UserDTO;

@WebServlet("/userloginend.do")
public class UserLoginEnd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//여기를 들어오지도 않네?
		//System.out.println("asdasdasdasd???");
		//1. 데이터 가져오기
		String id = req.getParameter("userid");
		String pw = req.getParameter("userpw");
		
		
		//2. DB 작업 -> DAO 에게 위임
		UserDAO dao = new UserDAO();
		
		//상자를 만들어서 데이터를 넘길것이므로~
		UserDTO dto = new UserDTO();
		dto.setId(id);//아이디 넣기
		dto.setPw(pw);//비밀번호 넣기
		
		System.out.println(req.getParameter("userid"));
		System.out.println(req.getParameter("userpw"));
		
		int result = dao.userLogin(dto);
		
		
		if (result == 1) {
			//로그인에 성공한 경우
			HttpSession session = req.getSession();
			
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			
			resp.sendRedirect("/AtTicketProject/userindex.do");//여기에 주소적을것
			
			
		} else {
			//로그인에 실패한 경우
			resp.setContentType("text/html; charset=UTF-8");
			
			PrintWriter writer = resp.getWriter();//printwriter
			
			writer.print("<html>");
			writer.print("<body>");
			writer.print("<script>");
			writer.print("alert('아이디 또는 비밀번호를 확인해주세요'); history.back();");//알림 띄우고 뒤로가기
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			writer.close();
			
		}
		
		
		
	}
	
	
}

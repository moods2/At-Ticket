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


@WebServlet("/userlogin.do")
public class UserLogin extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//1. 데이터 가져오는 작업
		String id = req.getParameter("userid");//아이디 가져오기 -> jsp 에서 사용자가 쓴것
		String pw = req.getParameter("userpw");//비번 가져오기 -> jsp 에서 사용자가 쓴것
		
		
		//2. DB 작업 -> DAO에게 DB작업을 위임해준다
		UserDAO dao = new UserDAO();
		
		//컨테이너를 만들어서 한번에 데이터를 넘기려고  UserDTO 만들어 넘기자
		UserDTO dto = new UserDTO(); 
		dto.setId(id);
		dto.setPw(pw);
		
		int result = dao.userLogin(dto);
		
		
		if (result == 1) {
			HttpSession session = req.getSession();//세션객체 가져오기
			
			session.setAttribute("id", req.getParameter("userid"));//세션에 id 데이터를 넣어준다
			session.setAttribute("pw", req.getParameter("userpw"));//세션에 pw 데이터를 넣어준다.
			
			
			
			resp.sendRedirect("/AtTicketProject/adminmain.do");
			
			
		} else {
			
			resp.setContentType("text/html; charset=UTF-8");//이걸 해야 아래 html 에서 한글을 적어도 깨지지 않는다

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

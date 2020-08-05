package com.test.user.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/userlogin.do")
public class UserLogin extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");//아이디 가져오기 -> jsp 에서 사용자가 쓴것
		String pw = req.getParameter("pw");//비번 가져오기 -> jsp 에서 사용자가 쓴것
		
		
		UserDAO dao = new UserDAO();
		
	}
	

}

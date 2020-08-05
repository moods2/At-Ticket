package com.test.user.main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/userindex.do")
public class UserIndex extends HttpServlet{
	
	//유저 로그인 시작하는 페이지
	//링크만 연결할 것이므로  Get방식으로 연결해준다
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/userindex.jsp");
		dispatcher.forward(req, resp);
		
		System.out.println(req.getContextPath());
	}
	
}

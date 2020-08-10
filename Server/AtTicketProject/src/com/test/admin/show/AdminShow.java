package com.test.admin.show;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/adminshow.do")
public class AdminShow extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//1. DB 작업 > select
		//2. 결과값 전달 + JSP 호출하기
		
		//1.
		ShowDAO dao = new ShowDAO();
		
		ShowDTO dto = dao.getList();
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/show/adminshow.jsp");
		dispatcher.forward(req, resp);
	}
	
	
}

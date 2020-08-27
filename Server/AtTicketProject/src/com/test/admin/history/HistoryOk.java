package com.test.admin.history;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/historyok.do")
public class HistoryOk extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		String content = req.getParameter("content");
		/*
		 * if(req.getParameter("empty") == 0) { //insert
		 * 
		 * }
		 */
		
		HistoryDAO dao = new HistoryDAO();
		dao.edit(content);
		
		resp.sendRedirect("/AtTicketProject/history.do");
	}
	
}

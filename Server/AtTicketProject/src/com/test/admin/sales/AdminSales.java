package com.test.admin.sales;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminsales.do")
public class AdminSales extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		String genre = req.getParameter("genre");
		String sdate = req.getParameter("sdate");
		String edate = req.getParameter("edate");
		String search = req.getParameter("search");
		
		SalesDAO dao = new SalesDAO();
		SalesDTO dto = new SalesDTO();
		
		dto.setGenre(genre);
		dto.setSdate(sdate);
		dto.setEdate(edate);
		dto.setSearch(search);
		
		ArrayList<SalesDTO> list = dao.get(dto); 
	
		
		
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/sales/sales.jsp");
		dispatcher.forward(req, resp);
	}
}

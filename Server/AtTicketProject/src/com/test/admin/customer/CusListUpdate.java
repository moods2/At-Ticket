package com.test.admin.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/customer/cuslistupdate.do")
public class CusListUpdate extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String search = req.getParameter("search");
		String page = req.getParameter("page");
		String cb = req.getParameter("cb");
		
		req.setAttribute("search", search);
		req.setAttribute("cb", cb);
		
		CustomerDAO dao = new CustomerDAO();
		CustomerDTO dto2 = new CustomerDTO();
		
		dto2.setSeq(cb);
		
		CustomerDTO dto = dao.get(dto2);
		
		req.setAttribute("dto", dto);	
		req.setAttribute("search", search);
		req.setAttribute("page", page);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/customer/cusListUpdate.jsp");
		dispatcher.forward(req, resp);
	}
}

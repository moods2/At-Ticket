package com.test.admin.sales;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminbankaddok.do")
public class AdminBankAddOk extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String account = req.getParameter("account");
		
		SalesDAO dao = new SalesDAO();
		BankDTO dto = new BankDTO();
		
		dto.setName(name);
		dto.setAccount(account);
		
		int result = dao.insertBank(dto);
		
		if(result == 1) {
			resp.sendRedirect("/AtTicketProject/admin/adminbank.do");

		}else {
			PrintWriter writer = resp.getWriter();
			writer.print("<html>");
			writer.print("<body>");
			writer.print("<script>");
			writer.print("alert('add failed'); history.back();");
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			writer.close();
		}
		
		
	}
	
}

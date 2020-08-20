package com.test.admin.customerqna;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/admincustomerqnaWrite.do")
public class AdminCustomerQnaWrite extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		
		req.setCharacterEncoding("UTF-8");
		
		String seq = req.getParameter("seq");
		String answer = req.getParameter("answer");
		
		//System.out.println(content);
		
		
		QnaDAO dao = new QnaDAO();
		QnaDTO dto = new QnaDTO();
		
		HttpSession session = req.getSession();
		
		dto.setMseq(session.getAttribute("adminSeq").toString());
		dto.setSeq(seq);
		dto.setAncontent(answer);
		
		int result1 = dao.write(dto);
		
		int result = dao.writeUp(dto);
		
		
		//System.out.println(result);
		
		if (result == 1) {
			resp.sendRedirect("/AtTicketProject/customerqna/admincustomerqnaview.do?seq="+seq);			
		} else {
			PrintWriter writer = resp.getWriter();
			writer.print("<html>");
			writer.print("<body>");
			writer.print("<script>");
			writer.print("alert('failed'); history.back();");
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			writer.close();			
		}	
	}
	
}
	


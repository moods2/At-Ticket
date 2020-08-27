package com.test.user.ticket;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/usershowfinal.do")
public class UserShowFinal extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		System.out.println("이페이지로 가긴하나?");
		
		HttpSession session = req.getSession();
		
		int cseq = (int) session.getAttribute("userseq");
		
		String what = req.getParameter("seatAvail");
		String useEgg = req.getParameter("eggmoney");
		String showroundSeq = req.getParameter("showroundSeq");
		String couponUserSeq = req.getParameter("couponUserSeq");
		
		String inputDate = req.getParameter("inputDate");
		String ticketNum = req.getParameter("ticketNum");
		
		String temp = inputDate.substring(0,inputDate.length()-3);
		inputDate = temp;
		
		UserShowDAO dao = new UserShowDAO();
		BookDTO dto = new BookDTO();
		
		
		
		
		dto.setCouponUserSeq(couponUserSeq);
		dto.setInputDate(inputDate);
		dto.setShowroundSeq(showroundSeq);
		dto.setTicketNum(ticketNum);
		dto.setCusseq(cseq);
		
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
		System.out.println(dto.getTicketNum());
		System.out.println(dto.getInputDate());
		
		
		
		int result = dao.insertBook(dto);//여기문제
		
		System.out.println("result : " + result);
		
		PrintWriter writer = resp.getWriter();
		writer.close();

		
		
	}
	
}

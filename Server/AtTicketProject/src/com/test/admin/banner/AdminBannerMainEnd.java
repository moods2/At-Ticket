package com.test.admin.banner;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.user.main.BannerDAO;
import com.test.user.main.BannerDTO;

@WebServlet("/adminbannermainend.do")
public class AdminBannerMainEnd extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		String pic = req.getParameter("pic");
		String top = req.getParameter("top");
		String middle = req.getParameter("middle");
		String bottom = req.getParameter("bottom");
		String color = req.getParameter("color");
		String num = req.getParameter("num");
		
		BannerDAO dao = new BannerDAO();
		BannerDTO dto = new BannerDTO();
		dto.setName("mainslider0" + num);
		dto.setImg(pic);
		dto.setIntro1(top);
		dto.setIntro2(middle);
		dto.setIntro3(bottom);
		dto.setFontcolor(color);
		
		System.out.println(dto.getName());
		System.out.println(dto.getImg());
		System.out.println(dto.getIntro1());
		System.out.println(dto.getIntro2());
		System.out.println(dto.getIntro3());
		System.out.println(dto.getFontcolor());
		
		int result = dao.setBanner(dto);
		dao.close();
		
		if (result == 1) {
			
			resp.sendRedirect("/AtTicketProject/adminbannermain.do");
			
		} else if (result == 0) {
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

package com.test.admin.coupon;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/coupon/couponinsert.do")
public class CouponInsert extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		//일정이 잡혀있는 공연의 데이터를 불러올 것이다...
		AdminCouponDAO dao = new AdminCouponDAO();
		
		ArrayList<AdminShowDTO> list = new ArrayList<AdminShowDTO>();
		
		list  = dao.getShowList();
		
		System.out.println(list.get(0));

		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/coupon/couponInsert.jsp");
		dispatcher.forward(req, resp);
	}
}


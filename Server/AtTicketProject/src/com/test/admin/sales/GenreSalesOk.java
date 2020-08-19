package com.test.admin.sales;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/genresalesok.do")
public class GenreSalesOk extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
//		String sdate = c.get(Calendar.YEAR) + "-" + c.get(Calendar.MONTH) + "-" + c.get(Calendar.DATE);
//		String edate = c.get(Calendar.YEAR) + "-" + c.get(Calendar.MONTH) + "-" + c.get(Calendar.DATE);
		String sdate = "2020-08-22";
		String edate = "2020-08-22";

		SalesDAO dao = new SalesDAO();
		SalesDTO dto = new SalesDTO();
		
		dto.setSdate(sdate);
		dto.setEdate(edate);
		
		ArrayList<SalesDTO> list = dao.getGenreSales(dto);
		
		JSONArray arr = new JSONArray();
		
		for(SalesDTO dtos : list) {
			JSONObject obj = new JSONObject();
			
			obj.put("name",dto.getGenre());
			obj.put("y",dto.getSales());
			
			arr.add(obj);
		}
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		PrintWriter writer = resp.getWriter();
		writer.print(arr);
		writer.close();
		
	}
	
	
}

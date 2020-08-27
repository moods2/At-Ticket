package com.test.user.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.test.user.mypage.MyReDTO;

@WebServlet("/myreok.do")
public class MyReOk	extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String cusseq = String.valueOf(session.getAttribute("userseq"));
		String begin = req.getParameter("begin");
		String end = req.getParameter("end");
		
		String nowPage = req.getParameter("nowPage");
		HashMap<String,String> map = new HashMap<String,String>();
		req.setCharacterEncoding("UTF-8");
		
		map.put("cusseq", cusseq);
		map.put("begin", begin);
		map.put("end", end);

		
		//2.
		MyHDAO dao = new MyHDAO();
//		(int)Math.ceil((double)totalCount/pageSize);
		int pageSize = 2;
		int totalPage = (int)Math.ceil((double)dao.getTotalCount(cusseq)/pageSize);
	
		if(totalPage == 0) {
			totalPage = 1;
		}
		
		ArrayList<MyReDTO> blist = dao.getlistB(map);
		
		dao.close();
		
		//3.
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		
		JSONArray arr = new JSONArray();
		
		for (MyReDTO dto : blist) {
			JSONObject obj = new JSONObject();
			obj.put("bdate",dto.getBdate());
			obj.put("bookdate",dto.getBookdate());
			obj.put("bookseq",dto.getBookseq());
			obj.put("bookstate",dto.getBookstate());
			obj.put("cnt",dto.getCnt());
			obj.put("showtitle",dto.getShowtitle());
			obj.put("nowPage", nowPage);
			obj.put("totalPage", totalPage);
			arr.add(obj);
		}
		
		PrintWriter writer = resp.getWriter();
		
		writer.print(arr);
		writer.close();
	}
}

package com.test.admin.sales;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.atticket.DBUtil;

public class SalesDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public SalesDAO() {
		//DB 연결
		DBUtil util = new DBUtil();
		conn = util.open();
	}
	
	public void close() {
		try {
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
		}
	}//close()

	public ArrayList<SalesDTO> get(SalesDTO dto) {
		
		try {
			String search = "";
			
			if(dto.getSearch() != null || !dto.getSearch().equals("")) {
				search = String.format("and title like '%% || %s || %%'",dto.getSearch());
			}
			
			String sql = String.format("select seq, title, startDate, endDate, price, poster, genre from tblShow where genre = ? %s",search);
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getGenre());
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	
}

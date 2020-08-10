package com.test.admin.show;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.test.atticket.DBUtil;

public class ShowDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public ShowDAO() {
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

	//Show 서블릿 -> 공연 목록 불러오기
	public ShowDTO getList() {
		
		try {
			String sql = "select * from tblShow order by seq desc"; 	
			
			ShowDTO dto = new ShowDTO();
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				dto.setSeq(rs.getString("seq"));
				dto.setTitle(rs.getString("title"));
				dto.setGenre(rs.getString("genre"));
				dto.setStartDate(rs.getString("startdate"));
				dto.setEndDate(rs.getString("enddate"));
				
				return dto;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}//getList()
	
	
}

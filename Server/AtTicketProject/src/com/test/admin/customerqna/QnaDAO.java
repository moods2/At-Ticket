package com.test.admin.customerqna;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

public class QnaDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public QnaDAO() {
		DBUtil util = new DBUtil();
		conn = util.open();
	}
	
	public void close() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<QnaDTO> list(HashMap<String, String> map) {
		
		try {
			
			String where = "";
			
			if (map.get("search") != null) {
				//이름 & 제목 & 내용 - 포괄 검색
				where = String.format("and (name like '%%%s%%' or title like '%%%s%%' or content like '%%%s%%')", map.get("search"), map.get("search"), map.get("search"));
			}
			
			String sql = String.format("select * from (select a.*, rownum as rnum from (select * from vwAdminQnaBoard order by seq desc) a) where rnum >= %s and rnum <=%s %s", 
					map.get("begin"), map.get("end"), 
					where);

			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			ArrayList<QnaDTO> list = new ArrayList<QnaDTO>();
			
			System.out.println("======================================================="+map.get("search"));
			
			while (rs.next()) {
				QnaDTO dto = new QnaDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setSubject(rs.getString("title"));
				dto.setName(rs.getString("name"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setTag(rs.getString("tag"));
				dto.setQview(rs.getInt("qview"));
				
				list.add(dto);
			}
			
			return list;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("QnaDTO.list()");
			
		}
		
		
		
		return null;
	}

	public int getTotalCount(HashMap<String, String> map) {
		
		try {
			
			String where = "";
			
			if (map.get("search") != null) {
				//이름 & 제목 & 내용 - 포괄 검색
				where = String.format("where (name like '%%%s%%' or subject like '%%%s%%' or content like '%%%s%%')", map.get("search"), map.get("search"), map.get("search"));
			}
			
			String sql = String.format("select count(*) as cnt from tblqna %s", where);
			
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getTotalCount");
		}
		
		return 0;
	}

}

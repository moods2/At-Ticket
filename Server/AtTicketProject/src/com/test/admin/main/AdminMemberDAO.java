package com.test.admin.main;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.test.atticket.AdminMemberDTO;
import com.test.atticket.DBUtil;

public class AdminMemberDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public AdminMemberDAO() {//생성자 생성
		//DB 연결
		
		DBUtil util = new DBUtil();
		conn = util.open();//연결 완료
		
	}
	
	//로그인 하기 위한 작업
	public int login(AdminMemberDTO dto) {
		try {
			
			String sql = "select count(*) as cnt from tblMember where id = ? and pw = ?"; 
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPw());
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				return rs.getInt("cnt");//1아니면 0이 반환될것이다. -> 위의 cnt 를 말하는 것이다! alias
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return 0;
		
	}
	
	
	
}

package com.test.user.main;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import com.test.atticket.DBUtil;
import com.test.atticket.UserDTO;

public class UserDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public UserDAO() {//생성자 생성
		//DB 연결
		DBUtil util = new DBUtil();
		conn = util.open();//연결 완료
	}
	
	//로그인 하기 위한 작업
	public int login(UserDTO dto) {
		try {
			
			String sql = "select count(*) as cnt from tblCustomer where id = ? and pw = ?"; 
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getId());//첫번째 ?에 집어넣는것
			pstat.setString(2, dto.getPw());//두번째 ? 에 집어넣는것
			
			rs = pstat.executeQuery();//쿼리 실행
			
			if (rs.next()) {
				return rs.getInt("cnt");//1아니면 0이 반환될것이다. -> 위의 cnt 를 말하는 것이다! alias
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return 0;
		
	}
	
	
	
}

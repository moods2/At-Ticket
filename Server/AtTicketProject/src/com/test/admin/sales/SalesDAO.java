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

	//총 매출액 구하기
	public int getTotalSales(SalesDTO dto) {
		
		try {
			String sql = "select sum(s.price) as total " + 
					"from tblPay p inner join tblBooking b on p.bookseq = b.seq " + 
					"inner join tblRoundInfo r on b.roundSeq = r.seq " + 
					"inner join tblShow s on r.showSeq = s.seq " + 
					"where b.bookdate >= ? and b.bookdate <= ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getSdate());
			pstat.setString(2, dto.getEdate());
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getInt("total");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	//장르별 매출액 구하기
	public ArrayList<SalesDTO> getGenreSales(SalesDTO dto) {
		
		try {
			String sql = "select s.genre, sum(s.price * b.cnt) as sum " + 
					"from tblShow s inner join tblRoundInfo r on s.seq=r.showseq " + 
					"inner join tblbooking b on r.seq=b.roundseq " + 
					"inner join tblPay p on b.seq=p.bookseq " + 
					"where b.bookdate >= ? and b.bookdate <= ? " + 
					"group by s.genre";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getSdate());
			pstat.setString(2, dto.getEdate());
			
			rs = pstat.executeQuery();
			
			ArrayList<SalesDTO> list = new ArrayList<SalesDTO>();
			
			while(rs.next()) {
				SalesDTO dto2 = new SalesDTO();
				dto2.setGenre(rs.getString("genre"));
				dto2.setSales(rs.getInt("sum"));
				dto2.setStrSales(dto2.getSales());
				
				list.add(dto2);
			}
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}


	
	
}

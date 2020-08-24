package com.test.user.review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.atticket.DBUtil;

public class ReviewDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public ReviewDAO() {
		// DB 연결
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

	//UserReview 서블릿 -> 리뷰 리스트 총 개수
	public int getTotalCount(HashMap<String, String> map) {
		try {
			String where = "";

			if (map.get("search") != null) {
				// 이름 & 제목 & 내용 - 포괄 검색
				where = String.format("and title like '%%%s%%' or content like '%%%s%%'",
						map.get("search"), map.get("search"));
			}
			String sql =String.format("select count(*) as cnt from tblReview where delflag=0 %s",where);
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	//UserReview 서블릿 -> 리뷰 리스트 불러오기
	public ArrayList<ReviewDTO> getList(HashMap<String, String> map) {
		
		try {
			//목록 or 검색
			String where = "";
			
			if(map.get("search") != null) {
				//이름 & 제목 & 내용 - 포괄 검색
				where = String.format("and r.title like '%%%s%%' or r.content like '%%%s%%'",map.get("search"),map.get("search"));
			}
			
			String sql = String.format("select a.* from (select rownum as rnum,(select count(*) as cnt from tblLike where revseq=r.seq) as heart, (select id from tblCustomer where seq=r.cusseq) as id,(select title from tblShow s where s.seq=r.showseq) as showname, r.* from tblReview r where r.delflag=0 %s order by r.seq desc) a where rnum >= %s and rnum <= %s order by %s"
					,where ,map.get("begin"), map.get("end"),map.get("sort"));
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
			
			while(rs.next()) {
				ReviewDTO dto = new ReviewDTO();
				dto.setId(rs.getString("id"));
				dto.setContent(rs.getString("content"));
				
				String[] date = rs.getString("regdate").split(" ");
				dto.setRegdate(date[0]);
				
				dto.setRfile(rs.getString("rfile"));
				dto.setRseq(rs.getString("seq"));
				dto.setRview(rs.getString("rview"));
				dto.setShowName(rs.getString("showname"));
				dto.setShowSeq(rs.getString("showseq"));
				dto.setTitle(rs.getString("title"));
				dto.setHeart(rs.getString("heart"));
				
				list.add(dto);
			}
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	//UserReviewShow 서블릿 -> 사용자가 예매한 공연 목록 가져오기
	public ArrayList<ReviewDTO> getShowlist(HashMap<String, String> map) {
		try {
			String sql = "select c.seq as cseq, s.seq as showseq, s.title as showname " + 
					"from tblCustomer c inner join tblPay p on c.seq = p.cusseq " + 
					"inner join tblBooking b on p.bookseq = b.seq " + 
					"inner join tblRoundInfo r on b.roundSeq = r.seq " + 
					"inner join tblShow s on r.showSeq = s.seq " + 
					"where s.genre = ? and c.seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("genre"));
			pstat.setString(2, map.get("cseq"));
			
			rs = pstat.executeQuery();
			
			ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
			
			while(rs.next()) {
				ReviewDTO dto = new ReviewDTO();
				dto.setCseq(rs.getInt("cseq"));
				dto.setShowSeq(rs.getString("showseq"));
				dto.setShowName(rs.getString("showname"));
				list.add(dto);
			}
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	//UserReviewWriteOk 서블릿 -> 리뷰 작성
	public int insertReview(ReviewDTO dto) {
		try {
			//title, content, cusseq, showseq, rfile
			String sql = "insert into tblReview (seq,title,content,regdate,rview,cusseq,delflag,showseq,rfile) values (reviewSeq.nextVal, ?, ?, default,default,?,default,?,?)";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getTitle());
			pstat.setString(2, dto.getContent());
			pstat.setString(3, dto.getCseq()+"");
			pstat.setString(4, dto.getShowSeq());
			pstat.setString(5, dto.getRfile());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	//UserReviewRead 서블릿 -> 선택 리뷰 불러오기
	public ReviewDTO getReview(String rseq) {
		try {
			String sql ="select r.*,(select title from tblShow s where s.seq=r.showseq) as showname,(select genre from tblShow s where s.seq=r.showseq) as genre, (select count(*) as cnt from tblLike where revseq=r.seq) as heart,(select id from tblCustomer where seq=r.cusseq) as id from tblReview r where r.seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rseq);
			rs = pstat.executeQuery();
			
			ReviewDTO dto = new ReviewDTO();
			
			if(rs.next()) {
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setHeart(rs.getString("heart"));
				dto.setId(rs.getString("id"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setRfile(rs.getString("rfile"));
				dto.setShowName(rs.getString("showname"));
				dto.setRview(rs.getString("rview"));
				dto.setRseq(rs.getString("seq"));
				dto.setGenre(rs.getString("genre"));
				dto.setCseq(rs.getInt("cusseq"));
				
				return dto;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	

	
}

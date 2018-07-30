package lent.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Properties;

import lent.model.vo.BikePrice;
import lent.model.vo.LentBike;


public class LentDAO {
	private Properties prop;
	
	public LentDAO() {
		prop = new Properties();
		
		try {
			String file = LentDAO.class.getResource("/sql/lent/lent-sql.properties").getPath();
			prop.load(new FileReader(file));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertLent(Connection conn, LentBike lb) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("insertLent3");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, lb.getMerchantUid());
			pstmt.setInt(2, lb.getMethodNum());
			pstmt.setString(3, lb.getBikeId());
			SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
			java.util.Date buyDate = format.parse(lb.getBuyDate());
			Date sql_buyDate = new Date(buyDate.getTime());
			pstmt.setDate(4, sql_buyDate);
			SimpleDateFormat format2 = new SimpleDateFormat("yyyy-mm-dd");
			java.util.Date returnDate = format2.parse(lb.getReturnDate());
			Date sql_returnDate = new Date(returnDate.getTime());
			pstmt.setDate(5, sql_returnDate);
			pstmt.setString(6, lb.getBuyerId());
			pstmt.setString(7, lb.getShopId());
			pstmt.setString(8, lb.getLentPrice());
			
			result = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		System.out.println(result);
		return result;
	}
	
	
	public BikePrice selectBikePrice(Connection conn, String bikeId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BikePrice b = null;
		String sql = prop.getProperty("selectBikePrice");
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, bikeId);
			rs= pstmt.executeQuery();
			if(rs.next()) {
				b = new BikePrice();
				b.setPrice(rs.getInt("price"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		System.out.println(b);
		return b;
	}
}

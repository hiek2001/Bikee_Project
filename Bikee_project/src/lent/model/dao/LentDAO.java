package lent.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import lent.model.vo.LentBike;
import lent.model.vo.PurchaseTicket;


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
	
	public PurchaseTicket selectPurchaseTicket(Connection conn, int methodNum) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PurchaseTicket pt = null;
		String sql = prop.getProperty("selectMethodNum");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, methodNum);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				pt = new PurchaseTicket();
				
				pt.setMethodNum(rs.getInt("method_num"));
				pt.setPurchaseMethod(rs.getString("purchase_method"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return pt;
	}

	public int insertLent(Connection conn, LentBike insertLb) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("insertLent");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, insertLb.getMerchantUid());
			pstmt.setInt(2, insertLb.getMethodNum());
			pstmt.setString(3, insertLb.getBikeId());
			pstmt.setString(4, insertLb.getBuyerId());
			pstmt.setString(5, insertLb.getShopId());
			
			result = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public LentBike selectLentBike(Connection conn, String merchantUid) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("selectLentBike");
		LentBike selectLb = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, merchantUid);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				selectLb = new LentBike();
				
				selectLb.setMerchantUid(rs.getString("merchant_uid"));
				selectLb.setMethodNum(rs.getInt("method_num"));
				selectLb.setBikeId(rs.getString("bike_id"));
				selectLb.setBuyDate(rs.getDate("buy_date"));
				selectLb.setReturnDate(rs.getDate("return_date"));
				selectLb.setBuyerId(rs.getString("buyer_id"));
				selectLb.setShopId(rs.getString("shop_id"));
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return selectLb;
	}
}

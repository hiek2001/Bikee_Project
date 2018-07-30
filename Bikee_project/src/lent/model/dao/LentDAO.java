package lent.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import bike.model.vo.BikePrice;
import lent.model.vo.LentBike;
import lent.model.vo.PurchaseTicket;
import shop.model.vo.Shop;


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
			//String형 int변환
			pstmt.setInt(8, lb.getLentPrice());
			
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
				selectLb.setBuyDate(rs.getString("buy_date"));
				selectLb.setReturnDate(rs.getString("return_date"));
				selectLb.setBuyerId(rs.getString("buyer_id"));
				selectLb.setShopId(rs.getString("shop_id"));
				selectLb.setLentPrice(rs.getInt("lent_price"));
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return selectLb;
	}
	
	public PurchaseTicket selectPurchaseTicket(Connection conn, int methodNum) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PurchaseTicket selectPt = null;
		String sql = prop.getProperty("selectMethodNum");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, methodNum);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				selectPt = new PurchaseTicket();
				
				selectPt.setMethodNum(rs.getInt("method_num"));
				selectPt.setPurchaseMethod(rs.getString("purchase_method"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return selectPt;
	}
	
	public Shop selectShop(Connection conn, String shopId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Shop s = null;
		String sql = prop.getProperty("selectShop");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, shopId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				s = new Shop();
				s.setShopId(rs.getString("shop_id"));
				s.setShopName(rs.getString("shop_name"));
				s.setShopAddr(rs.getString("shop_addr"));
				s.setShopPhone(rs.getString("shop_phone"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return s;
	}
	
	// MemberLentHistory Servlet에서 전체 리스트 출력
	public List<LentBike> selectLentBikeList(Connection conn, String memId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("selectLentBikeList");
		ArrayList<LentBike> list = new ArrayList();
		LentBike lb = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				lb = new LentBike();
				
				lb.setMerchantUid(rs.getString("merchant_uid"));
				lb.setMethodNum(rs.getInt("method_num"));
				lb.setBikeId(rs.getString("bike_id"));
				lb.setBuyDate(rs.getString("buy_date"));
				lb.setReturnDate(rs.getString("return_date"));
				lb.setBuyerId(rs.getString("buyer_id"));
				lb.setShopId(rs.getString("shop_id"));
				lb.setLentPrice(rs.getInt("lent_price"));
				
				list.add(lb);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return list;
	}
}

package lent.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Properties;

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
		String sql = prop.getProperty("insertLent");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, lb.getMerchantUid());
			pstmt.setInt(2, lb.getMethodNum());
			pstmt.setString(3, lb.getBikeId());
			pstmt.setString(4, lb.getBuyerId());
			pstmt.setString(5, lb.getShopId());
			
			result = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		System.out.println(result);
		System.out.println(sql);
		return result;
	}
}

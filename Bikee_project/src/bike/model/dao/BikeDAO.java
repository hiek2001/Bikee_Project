package bike.model.dao;

import static common.JDBCTemplate.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import bike.model.vo.Bike;

public class BikeDAO {
	private Properties prop;
	
	public BikeDAO() {
		prop = new Properties();
		
		try {
			String file = BikeDAO.class.getResource("/sql/lent/lent-sql.properties").getPath();
			prop.load(new FileReader(file));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public Bike selectBike(Connection conn, String bikeId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("selectBike");
		Bike bike = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bikeId);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				bike = new Bike();
				
				bike.setBikeId(rs.getString("bike_id"));
				bike.setBikeType(rs.getString("bike_type"));
				bike.setShopId(rs.getString("shop_id"));
				bike.setBikeStatus(rs.getString("bike_status"));
			} 
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return bike;
	}
}

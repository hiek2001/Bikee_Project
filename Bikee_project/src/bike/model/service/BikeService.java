package bike.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

import bike.model.dao.BikeDAO;
import bike.model.vo.Bike;

public class BikeService {
	
	public Bike selectBike(String bikeId) {
		Connection conn = getConnection();
		
		Bike bike = new BikeDAO().selectBike(conn, bikeId);
		
		close(conn);
		
		return bike;
	}

}

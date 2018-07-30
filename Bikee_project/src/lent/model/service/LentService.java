package lent.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import lent.model.dao.LentDAO;
import lent.model.vo.BikePrice;
import lent.model.vo.LentBike;


public class LentService {
	
	public int insertLent(LentBike lb) {
		Connection conn = getConnection();
		
		int result = new LentDAO().insertLent(conn, lb);
		
		if(result>0) commit(conn);
		else rollback(conn);
		
		return result;
	}
	
	
	public BikePrice selectBikePrice(String bikeId) {
		Connection conn = getConnection();
		BikePrice b = new LentDAO().selectBikePrice(conn, bikeId);
		close(conn);
		return b;
	}


}

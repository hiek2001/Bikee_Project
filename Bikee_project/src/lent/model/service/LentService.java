package lent.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import bike.model.vo.BikePrice;
import lent.model.dao.LentDAO;
import lent.model.vo.LentBike;
import lent.model.vo.PurchaseTicket;



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

	public PurchaseTicket selectPurchaseTicket(int methodNum) {
		Connection conn = getConnection();
		
		PurchaseTicket pt = new LentDAO().selectPurchaseTicket(conn, methodNum);
		
		close(conn);
		
		return pt;
	}
}

/*public class LentService {
	
	public PurchaseTicket selectPurchaseTicket(int methodNum) {
		Connection conn = getConnection();
		
		PurchaseTicket pt = new LentDAO().selectPurchaseTicket(conn, methodNum);
		
		close(conn);
		
		return pt;
	}
	
	
	public int insertLent(LentBike insertLb) {
		Connection conn = getConnection();
		
		int result = new LentDAO().insertLent(conn, insertLb);
		
		if(result>0) commit(conn);
		else rollback(conn);
		
		return result;
	}
	
	public LentBike selectLentBike(String merchantUid) {
		Connection conn = getConnection();
		
		LentBike selectLb = new LentDAO().selectLentBike(conn, merchantUid);
		
		close(conn);
		
		return selectLb;
	}

}*/

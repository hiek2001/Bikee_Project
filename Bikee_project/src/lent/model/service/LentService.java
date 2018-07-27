package lent.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import lent.model.dao.LentDAO;
import lent.model.vo.LentBike;
import lent.model.vo.PurchaseTicket;


public class LentService {
	
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

}

package lent.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import lent.model.dao.LentDAO;
import lent.model.vo.LentBike;


public class LentService {
	
	public int insertLent(LentBike lb) {
		Connection conn = getConnection();
		
		int result = new LentDAO().insertLent(conn, lb);
		
		if(result>0) commit(conn);
		else rollback(conn);
		
		return result;
	}

}

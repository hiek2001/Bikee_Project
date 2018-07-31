package gift.model.service;

import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;
import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;


import java.sql.Connection;

import gift.model.dao.GiftDAO;
import member.model.vo.Member;

public class GiftService {
	
	public Member selectMemPhone(String giftSelectPhone) {
		
		Connection conn = getConnection();
		Member m = new GiftDAO().selectMemPhone(conn,giftSelectPhone);
		close(conn);
		return m;
		
	}

}

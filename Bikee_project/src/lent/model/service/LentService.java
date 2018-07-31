package lent.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import bike.model.vo.BikePrice;
import community.model.dao.CommunityDAO;
import lent.model.dao.LentDAO;
import lent.model.vo.LentBike;
import lent.model.vo.PurchaseTicket;
import shop.model.vo.Shop;



public class LentService {
	
	/* lent_bike db 저장 */
	public int insertLent(LentBike lb) {
		Connection conn = getConnection();
		
		int result = new LentDAO().insertLent(conn, lb);
		
		if(result>0) commit(conn);
		else rollback(conn);
		
		return result;
	}
	
	/* bike_price 테이블에서 자전거 종류별 가격 가져옴 */
	public BikePrice selectBikePrice(String bikeId) {
		Connection conn = getConnection();
		BikePrice b = new LentDAO().selectBikePrice(conn, bikeId);
		close(conn);
		return b;
	}
	
	/* 이용권이름 검색 */
	public PurchaseTicket selectPurchaseTicket(int methodNum) {
		Connection conn = getConnection();
		
		PurchaseTicket selectPt = new LentDAO().selectPurchaseTicket(conn, methodNum);
		
		close(conn);
		
		return selectPt;
	} 
	
	/* lentConfirmEnd 출력용 검색 */
	public LentBike selectLentBike(String merchantUid) {
		Connection conn = getConnection();
		
		LentBike selectLb = new LentDAO().selectLentBike(conn, merchantUid);
		
		close(conn);
		
		return selectLb;
	}
	
	public Shop selectShop(String shopId) {
		Connection conn = getConnection();
		
		Shop selectShop = new LentDAO().selectShop(conn, shopId);
		
		close(conn);
		
		return selectShop;
	}
	
	/* mypage -> /memberLentHistory에서 전체 리스트 검색 */
	
	public List<LentBike> selectLentBikeList(String memId) {
		Connection conn = getConnection();
		
		List<LentBike> list = new LentDAO().selectLentBikeList(conn, memId);
		
		close(conn);
		
		return list;
	}
	
	public List<LentBike> memberPayList(int cPage, int numPerPage){
		Connection conn = getConnection();
		List<LentBike> list = new LentDAO().memberPayList(conn,cPage,numPerPage);
		close(conn);
		return list;
	}
	
	public int payListCount() {
		Connection conn = getConnection();
		int result = new LentDAO().payListCount(conn);
		close(conn);
		return result;
	}
}

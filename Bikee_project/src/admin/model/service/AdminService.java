package admin.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import admin.model.dao.AdminDAO;
import bike.model.vo.Bike;
import member.model.vo.Member;

public class AdminService {

	public ArrayList<Member> selectMemberList(int cPage, int numPerPage)
	{
		Connection conn=getConnection();
		ArrayList<Member> list=new AdminDAO().selectMemberList(conn,cPage,numPerPage);
		close(conn);
		return list;
	}
	
	public int selectMemberCount()
	{
		Connection conn=getConnection();
		int result=new AdminDAO().seletMemberCount(conn);
		close(conn);
		return result;
	}
	
	public ArrayList<Member> searchMemberName(String searchValue)
	{
		Connection conn=getConnection();
		ArrayList<Member> list=new AdminDAO().searchMemberName(conn,searchValue);
		close(conn);
		return list;
	}
	
	public ArrayList<Member> searchMemberId(String searchValue)
	{
		Connection conn=getConnection();
		ArrayList<Member> list=new AdminDAO().searchMemberId(conn,searchValue);
		close(conn);
		return list;
	}
//	자전거
	public List<Bike> selecBiketList(int cPage, int numPerPage){
		Connection conn = getConnection();
		
		List<Bike> list = new AdminDAO().selectBikeList(conn,cPage,numPerPage);
		
		close(conn);
		
		
		return list;
	}
	
	public int selectBikeTotalCount() {
		
		Connection conn=getConnection();
		int result=new AdminDAO().selectBikeTotalCount(conn);
		close(conn);
		
		return result;
	}

//	ajax
	
	public List<Bike> selectBikeListAjax(){
		Connection conn = getConnection();
		List<Bike> list = new AdminDAO().selectBikeListAjax(conn);
		close(conn);
		
		
		return list;
		
	}
	
	
}

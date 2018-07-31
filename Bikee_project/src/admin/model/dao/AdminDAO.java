package admin.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import bike.model.vo.Bike;
import member.model.vo.Member;
import notice.model.vo.Notice;

public class AdminDAO {

	private Properties prop;
	
	public AdminDAO() {
		prop=new Properties();
		try {
		String file=AdminDAO.class.getResource("/sql/admin/admin-sql.properties").getPath();
		prop.load(new FileReader(file));
		}
		catch(IOException e)
		{
			e.printStackTrace();
		}
	}
	
	public ArrayList<Member> selectMemberList(Connection conn,int cPage, int numPerPage)
	{
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("selectMemberList");
		Member m=null;
		ArrayList<Member> list=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, (cPage-1)*numPerPage+1);
			pstmt.setInt(2, cPage*numPerPage);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				m=new Member();
				m.setMem_id(rs.getString("mem_id"));
				m.setMem_name(rs.getString("mem_name"));
				m.setMem_birthdate(rs.getInt("mem_birthdate"));
				m.setMem_email(rs.getString("mem_email"));
				m.setMem_phone(rs.getString("mem_phone"));
				m.setMem_addr(rs.getString("mem_addr"));
				list.add(m);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		
		return list;
	}
	
	public int seletMemberCount(Connection conn)
	{
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("selectMemberCount");
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt("cnt");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		return result;
	}
	
	public ArrayList<Member> searchMemberName(Connection conn, String searchValue)
	{
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Member m=null;
		ArrayList<Member> list=new ArrayList<>();
		String sql=prop.getProperty("searchMemberName");
		System.out.println("NameDAO::"+sql);
		System.out.println("NameDAO::"+searchValue);
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+searchValue+"%");
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				m=new Member();
				m.setMem_id(rs.getString("mem_id"));
				m.setMem_name(rs.getString("mem_name"));
				m.setMem_birthdate(rs.getInt("mem_birthdate"));
				m.setMem_email(rs.getString("mem_email"));
				m.setMem_phone(rs.getString("mem_phone"));
				m.setMem_addr(rs.getString("mem_addr"));
				list.add(m);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		
		return list;
	}
	
	public ArrayList<Member> searchMemberId(Connection conn, String searchValue)
	{
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Member m=null;
		ArrayList<Member> list=new ArrayList<>();
		String sql=prop.getProperty("searchMemberId");
		System.out.println("idDAO::"+searchValue);
		System.out.println("idDAO::"+sql);
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+searchValue+"%");
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				m=new Member();
				m.setMem_id(rs.getString("mem_id"));
				m.setMem_name(rs.getString("mem_name"));
				m.setMem_birthdate(rs.getInt("mem_birthdate"));
				m.setMem_email(rs.getString("mem_email"));
				m.setMem_phone(rs.getString("mem_phone"));
				m.setMem_addr(rs.getString("mem_addr"));
				list.add(m);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		System.out.println("idDAO::"+list);
		return list;
	}
	
	
//	자전거
	public List<Bike> selectBikeList(Connection conn, int cPage, int numPerPage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("BikeList");
		Bike b=null;
		ArrayList<Bike> list=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, (cPage-1)*numPerPage+1);
			pstmt.setInt(2, cPage*numPerPage);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				b=new Bike();
				b.setBikeId(rs.getString("bike_id"));
				b.setBikeStatus(rs.getString("bike_status"));
				b.setBikeType(rs.getString("bike_type"));
				b.setShopId(rs.getString("shop_id"));
				list.add(b);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		return list;
		
		
		
		
	}

	public int selectBikeTotalCount(Connection conn){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("BikeTotalCount");
		int result = 0;
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs =pstmt.executeQuery();
			if(rs.next()) {
//				테이블 데이터갯수가져옴
				result = rs.getInt("CNT");
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return result;
		
	}
//	ajax
	public List<Bike> selectBikeListAjax(Connection conn){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("BikeListAjax");
		
		Bike b=null;
		ArrayList<Bike> list = new ArrayList();
		
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				b=new Bike();
				b.setBikeId(rs.getString("bike_id"));
				b.setBikeStatus(rs.getString("bike_status"));
				b.setBikeType(rs.getString("bike_type"));
				b.setShopId(rs.getString("shop_id"));
				list.add(b);
			}
			
		}
			
		catch (Exception e) {
				e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return list;
		
		
		
	}

}
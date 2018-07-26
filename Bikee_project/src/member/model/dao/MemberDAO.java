package member.model.dao;

import static common.JDBCTemplate.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import member.model.vo.Member;


public class MemberDAO {
	private Properties prop;
	
	public MemberDAO() {
		prop = new Properties();
		
		try {
			String file = MemberDAO.class.getResource("/sql/member/member-sql.properties").getPath();
			prop.load(new FileReader(file));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public Member selectOne(Connection conn, String mem_id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Member m = null;
		String sql = prop.getProperty("selectOne");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				m = new Member();
				
				// DB 컬럼명을 따른다.
				m.setMem_id(rs.getString("mem_id"));
				m.setMem_pw(rs.getString("mem_pw"));
				m.setMem_name(rs.getString("mem_name"));
				m.setMem_birthdate(rs.getInt("mem_birthdate"));
				m.setMem_phone(rs.getString("mem_phone"));
				m.setMem_email(rs.getString("mem_email"));
				m.setMem_addr(rs.getString("mem_addr"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return m;
	}
	
	public int insertMember(Connection conn,Member m)
	{
		PreparedStatement pstmt=null;
		int result=0;
		String sql=prop.getProperty("insertMember");
		System.out.println(sql);
		System.out.println(m);
		try {
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, m.getMem_id());
			pstmt.setString(2, m.getMem_pw());
			pstmt.setString(3, m.getMem_name());
			pstmt.setInt(4, m.getMem_birthdate());
			pstmt.setString(5, m.getMem_phone());
			pstmt.setString(6, m.getMem_email());
			pstmt.setString(7, m.getMem_addr());
			result=pstmt.executeUpdate();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		close(pstmt);
		
		return result;
	}
	
	public boolean checkId(Connection conn, String mem_id)
	{
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		//아이디 값이 있으면 false, 아이디 값 사용 가능
		boolean isAble=true;
		String sql=prop.getProperty("selectOne");
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs=pstmt.executeQuery();
			if(rs.next()) isAble=false;
			else isAble=true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		return isAble;
	}
}

package comment.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import center.model.dao.CenterDAO;
import center.model.vo.Center;
import comment.model.vo.Comment;

public class CommentDAO {
	private Properties prop;
	public CommentDAO() {
		prop = new Properties();
		try {
			String file = CenterDAO.class.getResource("/sql/comment/comment-sql.properties").getPath();
			prop.load(new FileReader(file));
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int insertComment(Connection conn, Comment c) {
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertComment");
		int result =0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, c.getWriter());
			pstmt.setString(2,  c.getComment());
			pstmt.setInt(3, c.getRefNo());
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		close(pstmt);
		return result;
	}
	
	public Comment selectComment(Connection conn, int no) {
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		Comment c = null;
		String sql = prop.getProperty("selectComment");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				c = new Comment();
				c.setCommentNo(rs.getInt("center_comment_no"));
				c.setWriter(rs.getString("center_comment_writer"));
				c.setComment(rs.getString("center_comment_content"));
				c.setRefNo(rs.getInt("center_comment_ref"));
				c.setCommentDate(rs.getDate("center_comment_date"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		System.out.println(c);
		return c;
		
	}
}

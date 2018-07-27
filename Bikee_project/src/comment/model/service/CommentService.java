package comment.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;
import static common.JDBCTemplate.close;

import java.sql.Connection;

import center.model.vo.Center;
import comment.model.dao.CommentDAO;
import comment.model.vo.Comment;


public class CommentService {
	public int insertComment(Comment c) {
		Connection conn = getConnection();
		int result = new CommentDAO().insertComment(conn,c);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public Comment selectComment(int no) {
		Connection conn = getConnection();
		Comment comment = new CommentDAO().selectComment(conn,no);
		close(conn);
		return comment;
	}
}

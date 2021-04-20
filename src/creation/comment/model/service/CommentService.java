package creation.comment.model.service;

import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;

import creation.comment.model.dao.CommentDAO;
import creation.comment.model.dto.CommentDTO;
import creation.member.model.dto.MemberDTO;

public class CommentService {

	private final CommentDAO commentDAO;
	
	public CommentService() {
		
		commentDAO = new CommentDAO();
		
	}

	public List<CommentDTO> selectList(String refBoard) {
		
		Connection con = getConnection();
		
		List<CommentDTO> commentList = commentDAO.selectList(con, refBoard);
		
		close(con);
		
		return commentList;
		
	}

	public int insertComment(CommentDTO insertComment, String categoryNo) {
		
		Connection con = getConnection();
		
		int result = commentDAO.insertComment(con, insertComment);
		
		int incrementCommentCount = 0;
		
		if(result > 0) {
			
			if("HP_RV".equals(categoryNo) || "HP_QNA".equals(categoryNo)) {
				
				incrementCommentCount = commentDAO.anotherIncrementCommentCount(con, insertComment);
				
			} else {
			
				incrementCommentCount = commentDAO.incrementCommentCount(con, insertComment);
			
			}
			
			if(incrementCommentCount > 0) {
				
				commit(con);
				
			} else {
				
				rollback(con);
				
			}
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result + incrementCommentCount;
		
	}
	
}

package creation.board.model.service;

import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import creation.board.model.dao.HPFAQBoardDAO;
import creation.board.model.dto.HPBoardDTO;
import creation.board.model.dto.PageInfoDTO;

public class HPFAQBoardService {

	private final HPFAQBoardDAO boardDAO;
	
	public HPFAQBoardService() {
		
		boardDAO = new HPFAQBoardDAO();
		
	}
	
	public List<HPBoardDTO> selectList(PageInfoDTO pageInfo) {
		
		Connection con = getConnection();
		
		List<HPBoardDTO> HPFAQList = boardDAO.selectList(con, pageInfo);
		
		close(con);
		
		return HPFAQList;
		
	}

	public int selectTotalCount() {
		
		Connection con = getConnection();
		
		int totalCount = boardDAO.selectTotalCount(con);
		
		close(con);
		
		return totalCount;
		
	}

	public HPBoardDTO selectDetail(int no) {
		
		Connection con = getConnection();
		
		int result = boardDAO.increamentBoardCount(con, no);
		
		HPBoardDTO board = null;
		
		if(result > 0) {
			
			board = boardDAO.selectDetail(con, no);
			
			if(board != null) {
				
				commit(con);
				
			} else {
				
				rollback(con);
				
			}
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return board;
		
	}

	public int insertBoard(HPBoardDTO insertBoard) {
		
		Connection con = getConnection();
		
		int result = boardDAO.insertBoard(con, insertBoard);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
		
	}
	
	public int anotherTableInsertBoard(HPBoardDTO insertBoard) {
		
		Connection con = getConnection();
		
		int result = boardDAO.anotherTableInsertBoard(con, insertBoard);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
		
	}
	
	public int deleteBoard(HPBoardDTO deleteBoard) {
		

		Connection con = getConnection();
		
		int result = boardDAO.deleteBoard(con, deleteBoard);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
		
	}
	
	public int anotherTableDeleteBoard(HPBoardDTO deleteBoard) {
		
		Connection con = getConnection();
		
		int result = boardDAO.anotherTableDeleteBoard(con, deleteBoard);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
		
	}

	public int updateBoard(HPBoardDTO updateBoard) {
		
		Connection con = getConnection();
		
		int result = boardDAO.updateBoard(con, updateBoard);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
		
	}

	public HPBoardDTO anotherSelectDetail(int no, String categoryNo) {

		System.out.println(10);
		
		Connection con = getConnection();
		
		int result = boardDAO.anotherBoardIncreamentCount(con, no, categoryNo);
		
		HPBoardDTO board = null;
		
		if(result > 0) {
			
			board = boardDAO.anotherSelectDetail(con, no, categoryNo);
			
			if(board != null) {
				
				commit(con);
				
			} else {
				
				rollback(con);
				
			}
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return board;
		
	}

	public int anotherUpdateBoard(HPBoardDTO updateBoard) {
		
		Connection con = getConnection();
		
		int result = boardDAO.anotherUpdateBoard(con, updateBoard);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
		
	}

}

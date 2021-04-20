package creation.board.model.service;

import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import creation.board.model.dao.HPInfoBoardDAO;
import creation.board.model.dto.HPBoardDTO;
import creation.board.model.dto.PageInfoDTO;

public class HPInfoBoardService {

	private final HPInfoBoardDAO BoardDAO;
	
	public HPInfoBoardService() {
		
		BoardDAO = new HPInfoBoardDAO();
		
	}

	public int selectTotalCount() {
		
		Connection con = getConnection();
		
		int totalCount = BoardDAO.selectTotalCount(con);
		
		close(con);
		
		return totalCount;
		
	}

	public List<HPBoardDTO> searchBoardList(PageInfoDTO pageInfo, String condition, String value) {
		
		Connection con = getConnection();
		
		List<HPBoardDTO> boardList = BoardDAO.searchBoardList(con, pageInfo, condition, value);
		
		close(con);
		
		return boardList;
		
	}

	public List<HPBoardDTO> selectList(PageInfoDTO pageInfo) {
		
		Connection con = getConnection();
		
		List<HPBoardDTO> boardList = BoardDAO.selectList(con, pageInfo);
		
		close(con);
		
		return boardList;
		
	}

	public HPBoardDTO selectDetail(int no) {
		
		Connection con = getConnection();
		
		int result = BoardDAO.increamentBoardCount(con, no);
		
		HPBoardDTO board = null;
		
		if(result > 0) {
			
			board = BoardDAO.selectDetail(con, no);
			
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

	public int searchBoardCount(String condition, String value) {
		
		Connection con = getConnection();
		
		int totalCount = BoardDAO.searchBoardCount(con, condition, value);
		
		close(con);
		
		return totalCount;
		
	}
	
}

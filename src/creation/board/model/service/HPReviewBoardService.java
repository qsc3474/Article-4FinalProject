package creation.board.model.service;

import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import creation.board.model.dao.HPReviewBoardDAO;
import creation.board.model.dto.FileDTO;
import creation.board.model.dto.HPBoardDTO;
import creation.board.model.dto.PageInfoDTO;

public class HPReviewBoardService {

	private final HPReviewBoardDAO BoardDAO;
	
	public HPReviewBoardService() {
		
		BoardDAO = new HPReviewBoardDAO();
		
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
			System.out.println(board);
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

	public int insertFileBoard(HPBoardDTO reviewBoard) {
		
		Connection con = getConnection();
		
		/* 최종적으로 반환 할 result 선언 */
		int result = 0;
		
		int boardResult = BoardDAO.insertFileBoard(con, reviewBoard);
		
		System.out.println(boardResult);
		
		int boardNo = BoardDAO.selectFileBoardSequence(con);
		
		System.out.println(boardNo);
		
		/* Attachment List를 불러온다. */
		List<FileDTO> fileList = reviewBoard.getFileList();
		
		/* 각각의 AttachmentDTO(파일 정보)들에 boardNo를 넣는다. */
		for(int i = 0 ; i < fileList.size() ; i++) {
			
			fileList.get(i).setBdNo(boardNo);
			
		}
		
		int fileResult = 0;
		
		for(int i = 0 ; i < fileList.size() ; i++) {
			
			fileResult += BoardDAO.insertFile(con, fileList.get(i));
			
		}
		
		System.out.println(fileResult);
		
		if(boardResult > 0 && fileResult == fileList.size()) {
			
			commit(con);
			result = 1;
			
		} else {
			
			rollback(con);
			
		}
		
		return result;
	}
	
}

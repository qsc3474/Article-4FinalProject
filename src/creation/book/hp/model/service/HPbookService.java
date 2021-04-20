package creation.book.hp.model.service;



import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import creation.board.model.dto.HPBoardDTO;
import creation.book.hp.model.dao.HPbookDAO;
import creation.book.hp.model.dto.HPbookDTO;
import creation.member.model.dto.MemberDTO;

public class HPbookService {

private final HPbookDAO bookDAO;
	
	public HPbookService() {
		
		bookDAO = new HPbookDAO();
		
	}

	public int insertBook(HPbookDTO newBook) {
		Connection con = getConnection();
		
		int result = bookDAO.insertBook(con, newBook);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
	}

	public List<HPbookDTO> selectBookList(int bookMember) {

		Connection con=getConnection();
		List<HPbookDTO> bookList = null;
		
		bookList = bookDAO.bookList(con,bookMember);
		
		if(bookList !=null) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		return bookList;
	}



	public HPbookDTO selectBookDetail(int no) {
		Connection con = getConnection();
		HPbookDTO bookDetail = null;
		
		bookDetail = bookDAO.selectbookDetail(con, no);
		
		
			if(bookDetail != null) {
				commit(con);
			} else {
				rollback(con);
			}
		close(con);
		
		return bookDetail;
	}

	public int deleteBook(HPbookDTO deleteBook) {

		Connection con = getConnection();
	
		int result = bookDAO.deleteBook(con, deleteBook);
		
		if(result>0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}
	}

	
	

	


package creation.htBoard.htmodel.service;



import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import creation.htBoard.htmodel.dao.htFAQ.HTFaqDAO;
import creation.htBoard.htmodel.dto.HTFileinfoDTO;
import creation.htBoard.htmodel.dto.HTNoticeDTO;
import creation.htBoard.htmodel.dto.HTPageInfoDTO;







public class HTFAQService {
	
	private final HTFaqDAO htFaqDAO;
	
	public HTFAQService() {
		htFaqDAO = new HTFaqDAO();
	}
	
	/* 페이징 처리를 위한 전체 게시물 수 조회용 메소드 */
	public int FaqSelectTotalCount() {
		
		Connection con = getConnection();
		
		int totalCount = htFaqDAO.FaqSelectTotalCount(con);
		
		close(con);
		
		return totalCount;
	}
	
	
	/* 게시물 전체 조회용 메소드 */
	public List<HTNoticeDTO> selectnoticeList(HTPageInfoDTO pageInfo) {
		Connection con = getConnection();
		
		List<HTNoticeDTO> htnoticeList = htFaqDAO.selectnoticeList(con, pageInfo);
		
		close(con);
		
		return htnoticeList;
	}

	
	/* 상세페이지 메소드 */
	public HTNoticeDTO selectNoticeDetail(int no) {
		
		Connection con = getConnection();
		HTNoticeDTO htNoticeDetail = null;
		int result = htFaqDAO.incrementNoticeCount(con, no);
		
		if(result > 0) {
			htNoticeDetail = htFaqDAO.selectNoticeDetail(con, no);
			
			if(htNoticeDetail != null) {
				commit(con);
			}else {
				rollback(con);
			}
		}else {
			rollback(con);
		}

		close(con);
			
		return htNoticeDetail;
	}

	
	/* 공지사항 작성 */
	public int insertNotice(HTNoticeDTO newNotice) {
		Connection con = getConnection();
		
		int result = htFaqDAO.insertNotice(con, newNotice);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

	/* 게시판 검색 결과 갯수 조회용 메소드 */
	public int searchNoticeCount(String condition, String value) {
		
		Connection con = getConnection();
		
		int totalCount = htFaqDAO.searchNoticeCount(con, condition, value);
		
		close(con);
		
		return totalCount;
	}
	/* 게시판 검색 결과 조회용 메소드 */
	public List<HTNoticeDTO> searchNoticeList(HTPageInfoDTO pageInfo, String condition, String value) {
		
		Connection con = getConnection();
		
		List<HTNoticeDTO> htnoticedList = htFaqDAO.searchNoticeList(con, pageInfo, condition, value);
		
		close(con);
		
		return htnoticedList;
	}
	
	/* 공지사항 게시글 수정 메소드 */
	public int htUpdateNotice(HTNoticeDTO requestNotice) {
		
		Connection con = getConnection();
		
		int result = htFaqDAO.htUpdateNotice(con, requestNotice);
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	/* 공지사항 삭제 메소드 */
	public int thDeleteNotice(HTNoticeDTO requestNotice) {
		
		Connection con = getConnection();
		
		int result = htFaqDAO.thDeleteNotice(con, requestNotice);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);

		return result;
	}

	public int insertThumbnail(HTFileinfoDTO fileInfo) {
		
		Connection con = getConnection();
		
		int result = htFaqDAO.insertThumbnail(con, fileInfo);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);

		return result;
	}

	

	
	
	
	
	
	
	

	

}

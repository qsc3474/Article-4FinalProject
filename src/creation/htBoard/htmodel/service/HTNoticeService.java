package creation.htBoard.htmodel.service;


import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import creation.htBoard.htmodel.dao.htNotice.HTNoticeDAO;
import creation.htBoard.htmodel.dto.HTNoticeDTO;
import creation.htBoard.htmodel.dto.HTPageInfoDTO;




public class HTNoticeService {
	
	private final HTNoticeDAO htnoticeDAO;
	
	public HTNoticeService() {
		htnoticeDAO = new HTNoticeDAO();
	}
	
	/* 페이징 처리를 위한 전체 게시물 수 조회용 메소드 */
	public int selectTotalCount() {
		
		Connection con = getConnection();
		
		int totalCount = htnoticeDAO.selectTotalCount(con);
		
		close(con);
		
		return totalCount;
	}
	
	
	/* 게시물 전체 조회용 메소드 */
	public List<HTNoticeDTO> selectnoticeList(HTPageInfoDTO pageInfo) {
		Connection con = getConnection();
		
		List<HTNoticeDTO> htnoticeList = htnoticeDAO.selectnoticeList(con, pageInfo);
		
		close(con);
		
		return htnoticeList;
	}

	
	/* 상세페이지 메소드 */
	public HTNoticeDTO selectNoticeDetail(int no) {
		
		Connection con = getConnection();
		HTNoticeDTO htNoticeDetail = null;
		int result = htnoticeDAO.incrementNoticeCount(con, no);
		
		if(result > 0) {
			htNoticeDetail = htnoticeDAO.selectNoticeDetail(con, no);
			
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
		
		int result = htnoticeDAO.insertNotice(con, newNotice);
		
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
		
		int totalCount = htnoticeDAO.searchNoticeCount(con, condition, value);
		
		close(con);
		
		return totalCount;
	}
	/* 게시판 검색 결과 조회용 메소드 */
	public List<HTNoticeDTO> searchNoticeList(HTPageInfoDTO pageInfo, String condition, String value) {
		
		Connection con = getConnection();
		
		List<HTNoticeDTO> htnoticedList = htnoticeDAO.searchNoticeList(con, pageInfo, condition, value);
		
		close(con);
		
		return htnoticedList;
	}
	
	/* 공지사항 게시글 수정 메소드 */
	public int htUpdateNotice(HTNoticeDTO requestNotice) {
		
		Connection con = getConnection();
		
		int result = htnoticeDAO.htUpdateNotice(con, requestNotice);
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
		
		int result = htnoticeDAO.thDeleteNotice(con, requestNotice);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);

		return result;
	}

	
	
	
	
	
	

	

}

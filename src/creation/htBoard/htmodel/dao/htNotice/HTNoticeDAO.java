package creation.htBoard.htmodel.dao.htNotice;


import static creation.common.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import creation.common.config.ConfigLocation;
import creation.htBoard.htmodel.dto.HTFileinfoDTO;
import creation.htBoard.htmodel.dto.HTNoticeDTO;
import creation.htBoard.htmodel.dto.HTPageInfoDTO;
import creation.member.model.dto.MemberDTO;


public class HTNoticeDAO {
	
	private final Properties prop;
	
	public HTNoticeDAO() {
		
		prop = new Properties();
		
		try {
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "htNotice/notice-mapper.xml"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/* 페이징 처리를 위한 전체 게시물 수 조회용 메소드 */
	public int selectTotalCount(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		
		int totalCount = 0;
			
		String query = prop.getProperty("selectTotalCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				totalCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return totalCount;
	}
	
	/* 게시물 전체 조회용 메소드 */
	public List<HTNoticeDTO> selectnoticeList(Connection con, HTPageInfoDTO pageInfo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		List<HTNoticeDTO> htnoticeList = null;
		
		String query = prop.getProperty("selectnoticeList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pageInfo.getStartRow());
			pstmt.setInt(2, pageInfo.getEndRow());
			
			rset = pstmt.executeQuery();
			
			htnoticeList = new ArrayList<>();
			
			while(rset.next()) {
				HTNoticeDTO htnotice = new HTNoticeDTO();
				htnotice.setWriter(new MemberDTO());
				
				htnotice.setNo(rset.getInt("HT_BD_NO"));
				htnotice.setCategoryNo(rset.getString("HT_BD_CATEGORY_NO"));
				htnotice.setTitle(rset.getString("HT_BD_TITLE"));
				htnotice.setContent(rset.getString("HT_BD_CONTENT"));
				htnotice.setDrawupDate(rset.getDate("HT_BD_DRAWUP_DATE"));
				htnotice.setWatched(rset.getInt("HT_BD_WATCHED"));
				
				htnotice.getWriter().setName(rset.getString("MEM_NAME"));
				
				htnotice.setMemNo(rset.getInt("HT_MEM_NO"));
				htnotice.setAnswer(rset.getString("HT_BD_ANSWER"));
				htnotice.setStatus(rset.getString("HT_BD_STATUS"));
				htnotice.setCmtCount(rset.getInt("HT_BD_CMT_COUNT"));
				
				
				htnoticeList.add(htnotice);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return htnoticeList;
	}

	/* 조회수 증가 메소드 */
	public int incrementNoticeCount(Connection con, int no) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("incrementNoticeCount");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, no);
			pstmt.setInt(2, no);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	
	/* 상세페이지 메소드 */
	public HTNoticeDTO selectNoticeDetail(Connection con, int no) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		HTNoticeDTO htNoticeDetail = null;
		
		String query = prop.getProperty("selectNoticeDetail");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, no);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				htNoticeDetail = new HTNoticeDTO();
				htNoticeDetail.setWriter(new MemberDTO());
				
				htNoticeDetail.setNo(rset.getInt("HT_BD_NO"));
				htNoticeDetail.setCategoryNo(rset.getString("HT_BD_CATEGORY_NO"));
				htNoticeDetail.setTitle(rset.getString("HT_BD_TITLE"));
				htNoticeDetail.setContent(rset.getString("HT_BD_CONTENT"));
				htNoticeDetail.setDrawupDate(rset.getDate("HT_BD_DRAWUP_DATE"));
				htNoticeDetail.setWatched(rset.getInt("HT_BD_WATCHED"));
				htNoticeDetail.getWriter().setName(rset.getString("MEM_NAME"));
				
				htNoticeDetail.setMemNo(rset.getInt("HT_MEM_NO"));
				htNoticeDetail.setStatus(rset.getString("HT_BD_STATUS"));
				htNoticeDetail.setCmtCount(rset.getInt("HT_BD_CMT_COUNT"));
				
				
			}
			System.out.println(htNoticeDetail);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return htNoticeDetail;
	}
	
	/* 공지사항 작성 */
	public int insertNotice(Connection con, HTNoticeDTO newNotice) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("thInsertNotice");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, newNotice.getTitle());
			pstmt.setString(2, newNotice.getContent());
			pstmt.setInt(3, newNotice.getWriter().getNo());
			pstmt.setString(4, newNotice.getCategoryNo());


			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	/* 게시판 검색 결과 갯수 조회용 메소드 */
	public int searchNoticeCount(Connection con, String condition, String value) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = null;
		int noticeCount = 0;
		
		if(condition.equals("writer")) {
			
			query = prop.getProperty("searchWriterNoticeCount");
			
		}else if(condition.equals("title")) {
			
			query = prop.getProperty("searchTitleNoticeCount");
			
		}else if(condition.equals("content")) {
			
			query = prop.getProperty("searchContentNoticeCount");
		}
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, value);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				noticeCount = rset.getInt("COUNT(*)");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return noticeCount;
	}
	/* 게시판 검색 결과 조회용 메소드 */
	public List<HTNoticeDTO> searchNoticeList(Connection con, HTPageInfoDTO pageInfo, String condition, String value) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = null;
		
		List<HTNoticeDTO> htnoticedList = null;
		
		if(condition.equals("writer")) {
			
			query = prop.getProperty("searchWriterNotice");
			
		} else if(condition.equals("title")) {
			
			query = prop.getProperty("searchTitleNotice");
			
		} else if(condition.equals("content")) {
			
			query = prop.getProperty("searchContentNotice");
		}
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, value);
			pstmt.setInt(2, pageInfo.getStartRow());
			pstmt.setInt(3, pageInfo.getEndRow());
			
			rset = pstmt.executeQuery();
			
			htnoticedList = new ArrayList<>();
			
			while(rset.next()) {
			HTNoticeDTO htNotice = new HTNoticeDTO();
			htNotice.setWriter(new MemberDTO());
			
			htNotice.setNo(rset.getInt("HT_BD_NO"));
			htNotice.setCategoryNo(rset.getString("HT_BD_CATEGORY_NO"));
			htNotice.setTitle(rset.getString("HT_BD_TITLE"));
			htNotice.setContent(rset.getString("HT_BD_CONTENT"));
			htNotice.setDrawupDate(rset.getDate("HT_BD_DRAWUP_DATE"));
			htNotice.setWatched(rset.getInt("HT_BD_WATCHED"));
			
			htNotice.getWriter().setName(rset.getString("MEM_NAME"));
			
			htNotice.setMemNo(rset.getInt("HT_MEM_NO"));
			htNotice.setStatus(rset.getString("HT_BD_STATUS"));
			htNotice.setCmtCount(rset.getInt("HT_BD_CMT_COUNT"));
			
			htnoticedList.add(htNotice);				
			
			}
			
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return htnoticedList;
	}

	/* 공지사항 게시글 수정 메소드 */
	public int htUpdateNotice(Connection con, HTNoticeDTO requestNotice) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("htUpdateNotice");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestNotice.getTitle());
			pstmt.setString(2, requestNotice.getContent());
			pstmt.setInt(3, requestNotice.getNo());
			
			result =pstmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int thDeleteNotice(Connection con, HTNoticeDTO requestNotice) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		System.out.println("no 넘어오니 : " + requestNotice);
		String query = prop.getProperty("htdeleteNotice");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, requestNotice.getNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertThumbnail(Connection con, HTFileinfoDTO fileInfo) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertThumbnail");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, fileInfo.getOriginFileName());
			pstmt.setString(2, fileInfo.getSaveFileName());
			pstmt.setString(3, fileInfo.getFilePath());

			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}

	

	
	

	
	
	
	
	
	

	


	

	

}

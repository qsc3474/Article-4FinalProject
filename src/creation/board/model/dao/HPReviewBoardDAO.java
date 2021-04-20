package creation.board.model.dao;

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

import creation.board.model.dto.CategoryDTO;
import creation.board.model.dto.FileDTO;
import creation.board.model.dto.HPBoardDTO;
import creation.board.model.dto.PageInfoDTO;
import creation.common.config.ConfigLocation;
import creation.member.model.dto.MemberDTO;

public class HPReviewBoardDAO {

private final Properties prop;
	
	public HPReviewBoardDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "board/hp-review-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}

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

	public List<HPBoardDTO> searchBoardList(Connection con, PageInfoDTO pageInfo, String condition, String value) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = null;
		List<HPBoardDTO> boardList = null;

		if (condition.equals("writer")) {
			query = prop.getProperty("searchWriterBoard");

		} else if (condition.equals("title")) {
			query = prop.getProperty("searchTitleBoard");

		} else if (condition.equals("content")) {
			query = prop.getProperty("searchBodyBoard");

		}

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, value);
			pstmt.setInt(2, pageInfo.getStartRow());
			pstmt.setInt(3, pageInfo.getEndRow());

			rset = pstmt.executeQuery();

			boardList = new ArrayList<>();

			while (rset.next()) {
				
				HPBoardDTO board = new HPBoardDTO();
				FileDTO thumbnail = new FileDTO();
				ArrayList<FileDTO> file = new ArrayList<FileDTO>();
				board.setCategory(new CategoryDTO());
				board.setWriter(new MemberDTO());
				
				board.setNo(rset.getInt("HP_RV_NO"));
				board.setCategoryNo(rset.getString("HP_RV_CATEGORY_NO"));
				board.setTitle(rset.getString("HP_RV_TITLE"));
				board.setContent(rset.getString("HP_RV_CONTENT"));
				board.setMemberNo(rset.getInt("HP_RV_MEM_NO"));
				board.getWriter().setName(rset.getString("MEM_NAME"));
				board.setWatched(rset.getInt("HP_RV_WATCHED"));
				board.setDrawupDate(rset.getDate("HP_RV_DRAWUP_DATE"));
				board.setStatus(rset.getString("HP_RV_STATUS"));
				board.setCmtCount(rset.getInt("HP_RV_CMT_COUNT"));
				
				thumbnail.setThumbnailPath(rset.getString("THUMBNAIL_PATH"));
				
				file.add(thumbnail);
				board.setFileList(file);

				boardList.add(board);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return boardList;
		
	}

	public List<HPBoardDTO> selectList(Connection con, PageInfoDTO pageInfo) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectList");
		
		List<HPBoardDTO> boardList = null;
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pageInfo.getStartRow());
			pstmt.setInt(2, pageInfo.getEndRow());
			rset = pstmt.executeQuery();
			
			boardList = new ArrayList<>();
			
			while(rset.next()) {
				
				HPBoardDTO board = new HPBoardDTO();
				FileDTO thumbnail = new FileDTO();
				ArrayList<FileDTO> file = new ArrayList<FileDTO>();
				board.setCategory(new CategoryDTO());
				board.setWriter(new MemberDTO());
				
				board.setNo(rset.getInt("HP_RV_NO"));
				board.setCategoryNo(rset.getString("HP_RV_CATEGORY_NO"));
				board.setTitle(rset.getString("HP_RV_TITLE"));
				board.setContent(rset.getString("HP_RV_CONTENT"));
				board.setMemberNo(rset.getInt("HP_RV_MEM_NO"));
				board.getWriter().setName(rset.getString("MEM_NAME"));
				board.setWatched(rset.getInt("HP_RV_WATCHED"));
				board.setDrawupDate(rset.getDate("HP_RV_DRAWUP_DATE"));
				board.setStatus(rset.getString("HP_RV_STATUS"));
				board.setCmtCount(rset.getInt("HP_RV_CMT_COUNT"));
				
				thumbnail.setThumbnailPath(rset.getString("THUMBNAIL_PATH"));
				
				file.add(thumbnail);
				board.setFileList(file);

				boardList.add(board);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
			
		}
		
		return boardList;
		
	}

	public int increamentBoardCount(Connection con, int no) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("increamentCount");
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, no);
			pstmt.setInt(2, no);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(pstmt);
			
		}
		
		return result;
		
	}

	public HPBoardDTO selectDetail(Connection con, int no) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectOneBoard");
		
		HPBoardDTO board = null;
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, no);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				board = new HPBoardDTO();
				
				FileDTO file = new FileDTO();
				ArrayList<FileDTO> fileList = new ArrayList<FileDTO>();
				board.setWriter(new MemberDTO());
				
				board.setNo(rset.getInt("HP_RV_NO"));
				board.setCategoryNo(rset.getString("HP_RV_CATEGORY_NO"));
				board.setTitle(rset.getString("HP_RV_TITLE"));
				board.setContent(rset.getString("HP_RV_CONTENT"));
				board.setMemberNo(rset.getInt("HP_RV_MEM_NO"));
				board.getWriter().setName(rset.getString("MEM_NAME"));
				board.setWatched(rset.getInt("HP_RV_WATCHED"));
				board.setDrawupDate(rset.getDate("HP_RV_DRAWUP_DATE"));
				board.setStatus(rset.getString("HP_RV_STATUS"));
				board.setCmtCount(rset.getInt("HP_RV_CMT_COUNT"));
				
				file.setThumbnailPath(rset.getString("THUMBNAIL_PATH"));
				
				fileList.add(file);
				board.setFileList(fileList);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
			
		}
		
		return board;
		
	}

	public int searchBoardCount(Connection con, String condition, String value) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = null;
		int boardCount = 0;

		if (condition.equals("writer")) {

			query = prop.getProperty("searchWriterBoardCount");
		} else if (condition.equals("title")) {

			query = prop.getProperty("searchTitleBoardCount");
		} else if (condition.equals("content")) {

			query = prop.getProperty("searchBodyBoardCount");
		}

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, value);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				boardCount = rset.getInt("COUNT(*)");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return boardCount;
		
	}

	public int insertFileBoard(Connection con, HPBoardDTO reviewBoard) {

		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("insertFileBoard");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, reviewBoard.getCategoryNo());
			pstmt.setString(2, reviewBoard.getTitle());
			pstmt.setString(3, reviewBoard.getContent());
			pstmt.setInt(4, reviewBoard.getMemberNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}

	public int selectFileBoardSequence(Connection con) {

		Statement stmt = null;
		ResultSet rset = null;
		
		int lastBoardNo = 0;
		
		String query = prop.getProperty("selectFileBoardSequence");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				lastBoardNo = rset.getInt(1);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(stmt);
			
		}
		
		return lastBoardNo;
		
	}

	public int insertFile(Connection con, FileDTO fileDTO) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertFile");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, fileDTO.getBdNo());
			pstmt.setString(2, fileDTO.getCategoryNo());
			pstmt.setString(3, fileDTO.getOriginName());
			pstmt.setString(4, fileDTO.getPath());
			pstmt.setString(5, fileDTO.getThumbnailPath());
			pstmt.setString(6, fileDTO.getName());
			pstmt.setString(7, fileDTO.getType());
			pstmt.setString(8, fileDTO.getExtension());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
}

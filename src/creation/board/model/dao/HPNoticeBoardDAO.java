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

public class HPNoticeBoardDAO {
	private final Properties prop;
	
	public HPNoticeBoardDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "board/hp-ntc-mapper.xml"));
			
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

	public List<HPBoardDTO> selectList(Connection con, PageInfoDTO pageInfo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectList");
		
		List<HPBoardDTO> HPNctList = null;
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pageInfo.getStartRow());
			pstmt.setInt(2, pageInfo.getEndRow());
			rset = pstmt.executeQuery();
			
			HPNctList = new ArrayList<>();
			
			while(rset.next()) {
				
				HPBoardDTO boardDTO = new HPBoardDTO();
				boardDTO.setWriter(new MemberDTO());
				boardDTO.setNo(rset.getInt("HP_BD_NO"));
				boardDTO.setCategoryNo(rset.getString("HP_BD_CATEGORY_NO"));
				boardDTO.setTitle(rset.getString("HP_BD_TITLE"));
				boardDTO.setContent(rset.getString("HP_BD_CONTENT"));
				boardDTO.setDrawupDate(rset.getDate("HP_BD_DRAWUP_DATE"));
				boardDTO.setWatched(rset.getInt("HP_BD_WATCHED"));
				boardDTO.getWriter().setName(rset.getString("MEM_NAME"));
				boardDTO.setMemberNo(rset.getInt("HP_MEM_NO"));
				boardDTO.setStatus(rset.getString("HP_BD_STATUS"));
				boardDTO.setCmtCount(rset.getInt("HP_BD_CMT_COUNT"));
				HPNctList.add(boardDTO);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
			
		}
				return HPNctList;
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
			
			while(rset.next()) {
				
				if(board == null) {
					
					board = new HPBoardDTO();
					ArrayList<FileDTO> files = new ArrayList<FileDTO>();
					board.setFileList(files);
					
				}
				
				FileDTO file = new FileDTO();
				
				board.setWriter(new MemberDTO());
				
				board.setNo(rset.getInt("HP_BD_NO"));
				board.setCategoryNo(rset.getString("HP_BD_CATEGORY_NO"));
				board.setTitle(rset.getString("HP_BD_TITLE"));
				board.setContent(rset.getString("HP_BD_CONTENT"));
				board.setDrawupDate(rset.getDate("HP_BD_DRAWUP_DATE"));
				board.setWatched(rset.getInt("HP_BD_WATCHED"));
				board.setMemberNo(rset.getInt("HP_MEM_NO"));
				board.getWriter().setName(rset.getString("MEM_NAME"));
				board.setCmtCount(rset.getInt("HP_BD_CMT_COUNT"));
				
				file.setPath(rset.getString("FILE_PATH"));
				file.setName(rset.getString("SAVE_FILE_NAME"));
				file.setOriginName(rset.getString("ORIGIN_FILE_NAME"));
				
				board.getFileList().add(file);
				
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
		
	
		 if(condition.equals("writer")) {
			
			query = prop.getProperty("searchWriterBoardCount");
		} else if(condition.equals("title")) {
			
			query = prop.getProperty("searchTitleBoardCount");
		} else if(condition.equals("content")) {
			
			query = prop.getProperty("searchBodyBoardCount");
		}
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, value);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
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

	public List<HPBoardDTO> searchBoardList(Connection con, PageInfoDTO pageInfo, String condition, String value) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = null;
		List<HPBoardDTO> HPNCTList = null;
		
		 if(condition.equals("writer")) {	
			query = prop.getProperty("searchWriterBoard");
	
		 } else if(condition.equals("title")) {
			query = prop.getProperty("searchTitleBoard");
			
		} else if(condition.equals("content")) {
			query = prop.getProperty("searchBodyBoard");
		
		}
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, value);
			pstmt.setInt(2, pageInfo.getStartRow());
			pstmt.setInt(3, pageInfo.getEndRow());
			
			rset = pstmt.executeQuery();
			
			HPNCTList = new ArrayList<>();
			
			while(rset.next()) {
				HPBoardDTO board = new HPBoardDTO();
				board.setCategory(new CategoryDTO());
				board.setWriter(new MemberDTO());
				
				board.setNo(rset.getInt("HP_BD_NO"));
				board.setCategoryNo(rset.getString("HP_BD_CATEGORY_NO"));
				board.getCategory().setCategoryName(rset.getString("HP_BD_CATEGORY_NAME"));
				board.setTitle(rset.getString("HP_BD_TITLE"));
				board.setContent(rset.getString("HP_BD_CONTENT"));
				board.setMemberNo(rset.getInt("HP_MEM_NO"));
				board.getWriter().setName(rset.getString("MEM_NAME"));
				board.setWatched(rset.getInt("HP_BD_WATCHED"));
				board.setDrawupDate(rset.getDate("HP_BD_DRAWUP_DATE"));
				board.setStatus(rset.getString("HP_BD_STATUS"));
				board.setCmtCount(rset.getInt("HP_BD_CMT_COUNT"));
				HPNCTList.add(board);				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return HPNCTList;
	}

	public int deleteBoard(Connection con, HPBoardDTO deleteBoard) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("deleteBoard");
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, deleteBoard.getNo());
			
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(pstmt);
			
		}
		
		return result;
	}

	public int insertThumbnailContent(Connection con, HPBoardDTO thumbnail) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("insertThumbnailContent");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, thumbnail.getTitle());
			pstmt.setString(2, thumbnail.getContent());
			pstmt.setInt(3, thumbnail.getMemberNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int selectThumbnailSequence(Connection con) {

		Statement stmt = null;
		ResultSet rset = null;
		
		int lastBoardNo = 0;
		
		String query = prop.getProperty("selectThumbnailSequence");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				lastBoardNo = rset.getInt("CURRVAL");
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
			pstmt.setString(5, fileDTO.getName());
			pstmt.setString(6, fileDTO.getType());
			pstmt.setString(7, fileDTO.getExtension());
			
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

	public int insertFileBoard(Connection con, HPBoardDTO noticeBoard) {

		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("insertFileBoard");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, noticeBoard.getCategoryNo());
			pstmt.setString(2, noticeBoard.getTitle());
			pstmt.setString(3, noticeBoard.getContent());
			pstmt.setInt(4, noticeBoard.getMemberNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}

	
	}


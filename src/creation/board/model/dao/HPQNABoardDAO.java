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
import creation.board.model.dto.HPBoardDTO;
import creation.board.model.dto.PageInfoDTO;
import creation.common.config.ConfigLocation;
import creation.member.model.dto.MemberDTO;

public class HPQNABoardDAO {

	private final Properties prop;
	
	public HPQNABoardDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "board/hp-qna-mapper.xml"));
			
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
				board.setCategory(new CategoryDTO());
				board.setWriter(new MemberDTO());

				board.setNo(rset.getInt("HP_QNA_NO"));
				board.setCategoryNo(rset.getString("HP_QNA_CATEGORY_NO"));
				board.setTitle(rset.getString("HP_QNA_TITLE"));
				board.setContent(rset.getString("HP_QNA_CONTENT"));
				board.setMemberNo(rset.getInt("HP_QNA_MEM_NO"));
				board.getWriter().setName(rset.getString("MEM_NAME"));
				board.setWatched(rset.getInt("HP_QNA_WATCHED"));
				board.setDrawupDate(rset.getDate("HP_QNA_DRAWUP_DATE"));
				board.setStatus(rset.getString("HP_QNA_STATUS"));
				board.setAnswer(rset.getString("HP_QNA_ANSWER"));
				board.setCmtCount(rset.getInt("HP_QNA_CMT_COUNT"));

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
				
				HPBoardDTO boardDTO = new HPBoardDTO();
				boardDTO.setWriter(new MemberDTO());
				boardDTO.setNo(rset.getInt("HP_QNA_NO"));
				boardDTO.setCategoryNo(rset.getString("HP_QNA_CATEGORY_NO"));
				boardDTO.setTitle(rset.getString("HP_QNA_TITLE"));
				boardDTO.setContent(rset.getString("HP_QNA_CONTENT"));
				boardDTO.setMemberNo(rset.getInt("HP_QNA_MEM_NO"));
				boardDTO.getWriter().setName(rset.getString("MEM_NAME"));
				boardDTO.setWatched(rset.getInt("HP_QNA_WATCHED"));
				boardDTO.setDrawupDate(rset.getDate("HP_QNA_DRAWUP_DATE"));
				boardDTO.setStatus(rset.getString("HP_QNA_STATUS"));
				boardDTO.setAnswer(rset.getString("HP_QNA_ANSWER"));
				boardDTO.setCmtCount(rset.getInt("HP_QNA_CMT_COUNT"));
				boardList.add(boardDTO);
				
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
				
				board.setWriter(new MemberDTO());
				
				board.setNo(rset.getInt("HP_QNA_NO"));
				board.setCategoryNo(rset.getString("HP_QNA_CATEGORY_NO"));
				board.setTitle(rset.getString("HP_QNA_TITLE"));
				board.setContent(rset.getString("HP_QNA_CONTENT"));
				board.setMemberNo(rset.getInt("HP_QNA_MEM_NO"));
				board.getWriter().setName(rset.getString("MEM_NAME"));
				board.setWatched(rset.getInt("HP_QNA_WATCHED"));
				board.setDrawupDate(rset.getDate("HP_QNA_DRAWUP_DATE"));
				board.setStatus(rset.getString("HP_QNA_STATUS"));
				board.setAnswer(rset.getString("HP_QNA_ANSWER"));
				board.setCmtCount(rset.getInt("HP_QNA_CMT_COUNT"));
				
				System.out.println(board);
				
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
	
}

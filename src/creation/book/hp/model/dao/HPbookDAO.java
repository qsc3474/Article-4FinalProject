package creation.book.hp.model.dao;

import static creation.common.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;


import creation.board.model.dto.HPBoardDTO;
import creation.book.hp.model.dto.HPbookDTO;
import creation.common.config.ConfigLocation;
import creation.member.model.dto.MemberDTO;

public class HPbookDAO {
	private final Properties prop;

public HPbookDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "book/hp-book-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}

	public int insertBook(Connection con, HPbookDTO newBook) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertBook");
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, newBook.getTime());
			pstmt.setInt(2, newBook.getMemberNo());
			pstmt.setString(3, newBook.getPetName());
			pstmt.setString(4, newBook.getPetKind());
			pstmt.setString(5, newBook.getPetGender());
			pstmt.setString(6, newBook.getPetAge());
			pstmt.setString(7, newBook.getPetNeut());
			pstmt.setString(8, newBook.getMessage());
			
			result=pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}

	public List<HPbookDTO> bookList(Connection con, int bookMember) {

		PreparedStatement pstmt= null;
		ResultSet rset =null;
		
		List<HPbookDTO> bookList = null;
		
		String query =prop.getProperty("bookList");
		
		try {
			pstmt =con.prepareStatement(query);
			pstmt.setInt(1, bookMember);
			
			rset = pstmt.executeQuery();
			
			bookList =new ArrayList<>();
			while(rset.next()) {
				HPbookDTO book = new HPbookDTO();
				book.setMemberNo(bookMember);
				
				book.setNo(rset.getInt("HP_BK_NO"));
				book.setTime(rset.getString("HP_BK_TIME"));
				book.setStatus(rset.getString("HP_BK_STATUS"));
				book.setPetName(rset.getString("HP_PET_NAME"));
				book.setPetKind(rset.getString("HP_PET_KIND"));
				book.setPetGender(rset.getString("HP_PET_GENDER"));
				book.setPetAge(rset.getString("HP_PET_AGE"));
				book.setPetNeut(rset.getString("HP_PET_NEUT"));
				book.setMessage(rset.getString("HP_BK_MESSAGE"));
				
				bookList.add(book);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return bookList;
	}


		
		
		
		
	
	public HPbookDTO selectbookDetail(Connection con, int no) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		HPbookDTO bookDetail = null;
		String query = prop.getProperty("bookDetail");
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, no );
			
			rset= pstmt.executeQuery();
			
			if(rset.next()) {
				bookDetail = new HPbookDTO();
				
				bookDetail.setNo(rset.getInt("HP_BK_NO"));
				bookDetail.setTime(rset.getString("HP_BK_TIME"));
				bookDetail.setStatus(rset.getString("HP_BK_STATUS"));
				bookDetail.setPetName(rset.getString("HP_PET_NAME"));
				bookDetail.setPetKind(rset.getString("HP_PET_KIND"));
				bookDetail.setPetGender(rset.getString("HP_PET_GENDER"));
				bookDetail.setPetAge(rset.getString("HP_PET_AGE"));
				bookDetail.setPetNeut(rset.getString("HP_PET_NEUT"));
				bookDetail.setMessage(rset.getString("HP_BK_MESSAGE"));
				bookDetail.setMemberNo(rset.getInt("HP_MEM_NO"));
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			close(rset);
			close(pstmt);
		}
		return bookDetail;
	}

	public int deleteBook(Connection con, HPbookDTO deleteBook) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("bookCancel");
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, deleteBook.getNo());
			
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(pstmt);
			
		}
		
		return result;
	}


	


	
	}

	





package creation.admin.model.dao;

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

import creation.book.hp.model.dto.HPbookDTO;
import creation.common.config.ConfigLocation;

public class AdminDAO {
	private final Properties prop;

	public AdminDAO() {
			
			prop = new Properties();
			
			try {
				
				prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "admin/admin-mapper.xml"));
				
			} catch (IOException e) {
				
				e.printStackTrace();
				
			}
			
		}
	public List<HPbookDTO> allBookList(Connection con) {
		Statement stmt= null;
		ResultSet rset= null;
		
		List<HPbookDTO> allBookList= null;
		
		String query= prop.getProperty("selectAllBook");
		
		try {
			stmt =con.createStatement();
			rset=stmt.executeQuery(query);
			
			allBookList = new ArrayList<>();
			
			while(rset.next()) {
				HPbookDTO book = new HPbookDTO();
				book.setNo(rset.getInt("HP_BK_NO"));
				book.setMemberNo(rset.getInt("HP_MEM_NO"));
				book.setTime(rset.getString("HP_BK_TIME"));
				book.setPetKind(rset.getString("HP_PET_KIND"));
				book.setPetName(rset.getString("HP_PET_NAME"));
				book.setPetAge(rset.getString("HP_PET_AGE"));
				book.setPetNeut(rset.getString("HP_PET_NEUT"));
				book.setMessage(rset.getString("HP_BK_MESSAGE"));
				book.setStatus(rset.getString("HP_BK_STATUS"));
				allBookList.add(book);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			close(rset);
			close(stmt);
		}
		
		return allBookList;
	}
	public int updateBook(Connection con, HPbookDTO updateBook) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateBook");
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, updateBook.getNo());
			
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			close(pstmt);
		}
		
		return result;

	}
	public int deleteBook(Connection con, HPbookDTO deleteBook) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("deleteBook");
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, deleteBook.getNo());
			
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			close(pstmt);
		}
		
		return result;
	}

}

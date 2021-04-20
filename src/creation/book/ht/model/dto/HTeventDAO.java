package creation.book.ht.model.dto;

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

import creation.book.ht.model.dao.HTeventDTO;
import creation.common.config.ConfigLocation;

public class HTeventDAO {
	
	private final Properties prop;
	
	public HTeventDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "book/htevent-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}

	public int insertEvent(Connection con, HTeventDTO newEvent) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertEvent");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, newEvent.getEventType());
			pstmt.setString(2, newEvent.getTime());
			pstmt.setString(3, newEvent.getTimeOut());
			pstmt.setInt(4, newEvent.getMemNo());
			pstmt.setString(5, newEvent.getPetNo());
			pstmt.setString(6, newEvent.getPetName());
			pstmt.setString(7, newEvent.getKind());
			pstmt.setString(8, newEvent.getPetGender());
			pstmt.setString(9, newEvent.getPetAge());
			pstmt.setString(10, newEvent.getPetNeut());
			pstmt.setString(11, newEvent.getMessage());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		
		return result;
	}

	public List<HTeventDTO> selectEventList(Connection con, int eventMember) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		List<HTeventDTO> eventList = null;
		
		String query = prop.getProperty("EventList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, eventMember);
			
			rset = pstmt.executeQuery();
			
			eventList = new ArrayList<>();
			
			while(rset.next()) {
				
				HTeventDTO event = new HTeventDTO();
				event.setMemNo(eventMember);
				
				event.setEventNo(rset.getInt("HT_EVENT_BK_NO"));
				event.setEventType(rset.getString("HT_EVENT_TYPE"));
				event.setPetName(rset.getString("HT_PET_NAME"));
				event.setTime(rset.getString("HT_ER_TIME"));
				event.setTimeOut(rset.getString("HT_ER_TIMEOUT"));
			
				eventList.add(event);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return eventList;
	}

}

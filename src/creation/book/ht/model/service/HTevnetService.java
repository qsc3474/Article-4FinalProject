package creation.book.ht.model.service;

import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import creation.book.ht.model.dao.HTeventDTO;
import creation.book.ht.model.dto.HTeventDAO;


public class HTevnetService {
	
	private final HTeventDAO hteventeDAO;
	
	public HTevnetService() {
		
		hteventeDAO = new HTeventDAO();
	}
	/* 호텔 이벤트룸 예약 인서트 메소드 */
	public int insertEvent(HTeventDTO newEvent) {
		
		Connection con = getConnection();
		
		int result = hteventeDAO.insertEvent(con, newEvent);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
	}
	/* 호텔 이벤트룸 예약확인 리스트 메소드*/
	public List<HTeventDTO> selectEventList(int eventMember) {
		
		Connection con = getConnection();
		List<HTeventDTO> eventList = null;
		
		eventList = hteventeDAO.selectEventList(con,eventMember);
		
		if(eventList != null) {
			
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return eventList;
	}

}

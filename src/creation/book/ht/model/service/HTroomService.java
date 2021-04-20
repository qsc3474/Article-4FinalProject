package creation.book.ht.model.service;

import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;
import creation.book.ht.model.dao.HTroomDTO;
import creation.book.ht.model.dto.HTroomDAO;




public class HTroomService {
	
	private final HTroomDAO htRoomDAO;
	
	public HTroomService() {
		
		htRoomDAO = new HTroomDAO();
	}
	/* 호텔 룸 예약 인서트 메소드 */
	public int insertRoom(HTroomDTO newRoom) {
		
		Connection con = getConnection();
		
		int result = htRoomDAO.insertRoom(con, newRoom);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return result;
	}
	/* 호텔 룸 예약확인 리스트 메소드*/
	public List<HTroomDTO> selectRoomList(int roomMember) {
		
		Connection con = getConnection();
		List<HTroomDTO> roomList = null;
		
		roomList = htRoomDAO.selectRoomList(con,roomMember);
		
		if(roomList != null) {
			
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return roomList;
	}
	public HTroomDTO selectRoomDetail(int no) {
		Connection con = getConnection();
		HTroomDTO roomDetail = null;
		
		roomDetail = htRoomDAO.selectRoomDetail(con, no);
		
		
			if(roomDetail != null) {
				commit(con);
			} else {
				rollback(con);
			}
		close(con);
		
		return roomDetail;
	}

}

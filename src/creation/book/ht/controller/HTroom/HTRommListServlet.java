package creation.book.ht.controller.HTroom;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import creation.book.ht.model.dao.HTroomDTO;
import creation.book.ht.model.service.HTroomService;
import creation.member.model.dto.MemberDTO;


@WebServlet("/ht/room/list")
public class HTRommListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int roomMember = ((MemberDTO)request.getSession().getAttribute("loginMember")).getNo();
		
		
		HTroomService roomService= new HTroomService();
		List<HTroomDTO> roomList= roomService.selectRoomList(roomMember);
		
		System.out.println(roomList);
		String path = "";
		if(!roomList.isEmpty()) {		
			path = "/WEB-INF/views/thRoomReservation/thRoomList.jsp";
			request.setAttribute("roomList", roomList);
		} else {						
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "예약확인 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

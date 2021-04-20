package creation.book.ht.controller.HTroom;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.book.ht.model.dao.HTroomDTO;
import creation.book.ht.model.service.HTroomService;
import creation.member.model.dto.MemberDTO;


@WebServlet("/ht/room/insert")
public class HTroomInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String path = "/WEB-INF/views/thRoomReservation/HTRoom.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int roomMember = ((MemberDTO)request.getSession().getAttribute("loginMember")).getNo();
		String petName = request.getParameter("petName");
		String kind = request.getParameter("kind");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String neut = request.getParameter("neut");
		String serviceType = request.getParameter("serviceType");
		String roomType = request.getParameter("roomType");
		String pets = request.getParameter("pets");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String startTime = request.getParameter("startTime");
		String endTime = request.getParameter("endTime");
		String message = request.getParameter("message");
		
		String startDateTime = (startDate + " " + startTime);
		String endDateTime = (endDate + " " + endTime);
		
		HTroomDTO newRoom = new HTroomDTO();
		
		newRoom.setMemNo(roomMember);
		newRoom.setCheckIn(startDateTime);
		newRoom.setCheckOut(endDateTime);
		newRoom.setPetName(petName);
		newRoom.setPetKind(kind);
		newRoom.setPetGender(gender);
		newRoom.setType(serviceType);
		newRoom.setRoomNo(roomType);
		newRoom.setPetNo(pets);
		newRoom.setPetAge(age);
		newRoom.setPetNeut(neut);
		newRoom.setMessage(message);
		
		System.out.println(newRoom);
		
		HTroomService roomService = new HTroomService();
		int result = roomService.insertRoom(newRoom);
		
		String path = "";
		
		if(result > 0) {
			path = "/WEB-INF/views/common/thSuccess.jsp";
			request.setAttribute("successCode", "htInsertRoom");
		}else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "호텔 룸 예약에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}

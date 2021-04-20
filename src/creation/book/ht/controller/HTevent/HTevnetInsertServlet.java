package creation.book.ht.controller.HTevent;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.book.ht.model.dao.HTeventDTO;
import creation.book.ht.model.service.HTevnetService;
import creation.member.model.dto.MemberDTO;




@WebServlet("/ht/event/Insert")
public class HTevnetInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/views/htEventReservation/HTEvent.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int eventMember = ((MemberDTO)request.getSession().getAttribute("loginMember")).getNo();
		String petName = request.getParameter("petName");
		String kind = request.getParameter("kind");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String neut = request.getParameter("neut");
		String eventType = request.getParameter("eventType");
		String pets = request.getParameter("pets");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String timeOUT = request.getParameter("timeOUT");
		String message = request.getParameter("message");
		
		String dateTime = (date + " " + time);
		String dateTimeOUT = (date + " " + timeOUT);
		
		HTeventDTO newEvent = new HTeventDTO();
		
		newEvent.setMemNo(eventMember);
		newEvent.setTime(dateTime);
		newEvent.setTimeOut(dateTimeOUT);
		newEvent.setPetName(petName);
		newEvent.setKind(kind);
		newEvent.setPetGender(gender);
		newEvent.setEventType(eventType);
		newEvent.setPetNo(pets);
		newEvent.setPetAge(age);
		newEvent.setPetNeut(neut);
		newEvent.setMessage(message);
		
		
		
		System.out.println(newEvent);
		
		HTevnetService eventService = new HTevnetService();
		int result = eventService.insertEvent(newEvent);
		
		String path = "";
		
		if(result > 0) {
			path = "/WEB-INF/views/common/thSuccess.jsp";
			request.setAttribute("successCode", "htInsertEvent");
		}else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "호텔 이벤트 예약에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}

package creation.book.ht.controller.HTevent;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.book.ht.model.dao.HTeventDTO;
import creation.book.ht.model.service.HTevnetService;
import creation.member.model.dto.MemberDTO;


@WebServlet("/ht/event/list")
public class HTeventListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int eventMember = ((MemberDTO)request.getSession().getAttribute("loginMember")).getNo();
		
		HTevnetService eventService= new HTevnetService();
		List<HTeventDTO> eventList = eventService.selectEventList(eventMember);
		
		System.out.println(eventList);
		
		String path = "";
		
		if(!eventList.isEmpty()) {		
			
			path = "/WEB-INF/views/htEventReservation/theventList.jsp";
			request.setAttribute("eventList", eventList);
			
		} else {						
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "예약확인 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

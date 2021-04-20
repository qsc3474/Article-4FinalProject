package creation.book.hp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import creation.book.hp.model.dto.HPbookDTO;
import creation.book.hp.model.service.HPbookService;
import creation.member.model.dto.MemberDTO;



/**
 * Servlet implementation class HPbookSelectServlet
 */
@WebServlet("/hp/book/detail")
public class HPbookDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.valueOf(request.getParameter("no"));
		HPbookService bookService = new HPbookService();
		HPbookDTO HPBookDetail = bookService.selectBookDetail(no);
		System.out.println(HPBookDetail);
	
		String path = "";
		
	
		
		if(HPBookDetail != null) {
			path="/WEB-INF/views/book/bookDetail.jsp";
			request.setAttribute("HPBookDetail", HPBookDetail);
		}else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "예약에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	}

	
	



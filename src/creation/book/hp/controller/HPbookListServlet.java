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
 * Servlet implementation class HPbookListServlet
 */
@WebServlet("/hp/book/list")
public class HPbookListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bookMember = ((MemberDTO)request.getSession().getAttribute("loginMember")).getNo();
		
		
		HPbookService bookService= new HPbookService();
		List<HPbookDTO> bookList= bookService.selectBookList(bookMember);
		
		System.out.println(bookList);
		String path = "";
		if(!bookList.isEmpty()) {		// 공지사항이 조회 되었다면
			path = "/WEB-INF/views/book/bookList.jsp";
			request.setAttribute("bookList", bookList);
		} else {						// 공지사항이 조회 되지 않았다면
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지사항 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
	}

}

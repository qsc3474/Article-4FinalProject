package creation.book.hp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import creation.board.model.dto.HPBoardDTO;
import creation.board.model.service.HPFAQBoardService;
import creation.book.hp.model.dto.HPbookDTO;
import creation.book.hp.model.service.HPbookService;

/**
 * Servlet implementation class HPbookDeleteServlet
 */
@WebServlet("/hp/book/delete")
public class HPbookDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no =Integer.valueOf(request.getParameter("no"));
		System.out.println(no);
		int result = 0;
		HPbookService bookService = new HPbookService();
		
		HPbookDTO deleteBook = new HPbookDTO();
		deleteBook.setNo(no);
		
		result =bookService.deleteBook(deleteBook);
		
		System.out.println(deleteBook);
		System.out.println(result);
		String path= "";
		if(result > 0) {
			
			path = "/WEB-INF/views/book/bookList.jsp";
			request.setAttribute("successCode", "되나");
			
		}else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "게시글 작성에 실패하셨습니다.");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}
	
}

package creation.book.hp.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.book.hp.model.dto.HPbookDTO;
import creation.book.hp.model.service.HPbookService;
import creation.member.model.dto.MemberDTO;


/**
 * Servlet implementation class HPbookInsertServlet
 */
@WebServlet("/hp/book/insert")
public class HPbookInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/views/book/book.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bookMember = ((MemberDTO)request.getSession().getAttribute("loginMember")).getNo();
		String petName =request.getParameter("petName");
		String kind =request.getParameter("kind");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String neut =request.getParameter("neut");
		String date= request.getParameter("date");
		String time= request.getParameter("time");
		String message = request.getParameter("message");
	
		
		String dateTime= (date+" "+time);
		
//		
//		System.out.println(bookMember);
//		System.out.println(petName);
//		System.out.println(kind);
//		System.out.println(gender);
//		System.out.println(neut);
//		System.out.println(dateTime);

		
		HPbookDTO newBook =new HPbookDTO();
		
		newBook.setMemberNo(bookMember);
		newBook.setTime((dateTime));
		newBook.setPetName(petName);
		newBook.setPetKind(kind);
		newBook.setPetGender(gender);
		newBook.setPetAge(age);
		newBook.setPetNeut(neut);
		newBook.setMessage(message);
		
		
//		System.out.println(newBook);
		
		
		HPbookService bookService = new HPbookService();
		int result =bookService.insertBook(newBook);
		
		String path="";
		
		if(result>0) {
			path="/WEB-INF/views/main/main.jsp";
			request.setAttribute("book", "bookSuccess");
		}else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "예약에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}

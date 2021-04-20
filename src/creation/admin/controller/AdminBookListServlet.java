package creation.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.admin.model.service.AdminService;
import creation.book.hp.model.dto.HPbookDTO;


/**
 * Servlet implementation class AdminPageServlet
 */
@WebServlet("/admin/book/List")
public class AdminBookListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AdminService admin = new AdminService();
		List<HPbookDTO> allBookList= admin.selectAllBookList();
		String path = "";

		System.out.println(allBookList);
		
		if(!allBookList.isEmpty()) {
			path="/WEB-INF/views/admin/adminBookList.jsp";
			request.setAttribute("allBookList", allBookList);
		}
		

	
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}

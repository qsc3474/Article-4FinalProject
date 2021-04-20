package creation.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.admin.model.service.AdminService;
import creation.book.hp.model.dto.HPbookDTO;

/**
 * Servlet implementation class AdminBookUpdateServelet
 */
@WebServlet("/admin/book/update")
public class AdminBookUpdateServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	int no = Integer.valueOf(request.getParameter("no"));	
	System.out.println(no);
	int result = 0;
	
	AdminService bookUpdate = new AdminService();
	
	HPbookDTO updateBook = new HPbookDTO();
	updateBook.setNo(no);
	result =bookUpdate.updateBook(updateBook);
	
	System.out.println(updateBook);
	String path="";
	if(result>0) {
		response.sendRedirect( request.getServletContext().getContextPath()+"/index.jsp");
	}else {
		path="WEB-INF/view/common/failed.jsp";
	}
	
	
	}


}

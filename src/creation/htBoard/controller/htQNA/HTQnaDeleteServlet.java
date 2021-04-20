package creation.htBoard.controller.htQNA;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import creation.htBoard.htmodel.dto.HTNoticeDTO;
import creation.htBoard.htmodel.service.HTQnaService;



@WebServlet("/ht/QNA/delete")
public class HTQnaDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = Integer.valueOf(request.getParameter("faqNo"));
		System.out.println("게시판 번호 : " + no);
		HTNoticeDTO requestNotice = new HTNoticeDTO();
		requestNotice.setNo(no);
		int result = new HTQnaService().thDeleteNotice(requestNotice);
		
		String page = "";

		if(result > 0) {
			page = "/WEB-INF/views/common/thSuccess.jsp";
			
			request.setAttribute("successCode", "thDeleteQNA");

		}else {
			page = "/WEB-INF/views/common/failed.jsp";
			
			request.setAttribute("message", "공지사항 삭제 실패!");
			
		}
		request.getRequestDispatcher(page).forward(request, response);
		
	}

}

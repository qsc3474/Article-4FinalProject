package creation.htBoard.controller.htQNA;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.htBoard.htmodel.dto.HTNoticeDTO;
import creation.htBoard.htmodel.service.HTQnaService;



@WebServlet("/ht/QNA/update")
public class HTQnaUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		int no = Integer.valueOf(request.getParameter("no"));
		
		HTQnaService noticeService = new HTQnaService();
		HTNoticeDTO htNotice = noticeService.selectNoticeDetail(no);
		
		
		String path ="";
		if(htNotice != null) {
			path = "/WEB-INF/views/htBoard/htQNA/thQNAUpdateForm.jsp";
			request.setAttribute("htNotice", htNotice);
		}else {
			 path = "/WEB-INF/views/common/failed.jsp";
			 request.setAttribute("message", "공지사항 수정용 조회하기 실패!");
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int no = Integer.valueOf(request.getParameter("noticeNo"));
	
		HTNoticeDTO requestNotice = new HTNoticeDTO();
		requestNotice.setTitle(title);
		requestNotice.setContent(content);
		requestNotice.setNo(no);

		System.out.println(requestNotice);
		
		int result = new HTQnaService().htUpdateNotice(requestNotice);
		
		String page ="";
		if(result > 0) {
			page = "/WEB-INF/views/common/thSuccess.jsp";
			
			request.setAttribute("successCode", "htUpdateQNA");
		}else {
			page = "/WEB-INF/views/common/failed.jsp";
			
			request.setAttribute("message", "공지사항 수정 실패!");
			
		}
		request.getRequestDispatcher(page).forward(request, response);
	}
}

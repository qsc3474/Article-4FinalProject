package creation.htBoard.controller.htNotice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.htBoard.htmodel.dto.HTNoticeDTO;
import creation.htBoard.htmodel.service.HTNoticeService;

@WebServlet("/ht/NTC/notice/update")
public class HtNoticeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		int no = Integer.valueOf(request.getParameter("no"));
		
		HTNoticeService noticeService = new HTNoticeService();
		HTNoticeDTO htNotice = noticeService.selectNoticeDetail(no);
		
		
		String path ="";
		if(htNotice != null) {
			path = "/WEB-INF/views/htBoard/htNotice/thUpdateForm.jsp";
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
//		String file = request.getParameter("file");

		
		HTNoticeDTO requestNotice = new HTNoticeDTO();
		requestNotice.setTitle(title);
		requestNotice.setContent(content);
		requestNotice.setNo(no);
//		requestNotice.setFile(file);

		
		
		System.out.println(requestNotice);
		
		int result = new HTNoticeService().htUpdateNotice(requestNotice);
		
		String page ="";
		if(result > 0) {
			page = "/WEB-INF/views/common/thSuccess.jsp";
			
			request.setAttribute("successCode", "htUpdateNotice");
		}else {
			page = "/WEB-INF/views/common/failed.jsp";
			
			request.setAttribute("message", "공지사항 수정 실패!");
			
		}
		request.getRequestDispatcher(page).forward(request, response);
	}
}

package creation.htBoard.controller.htFAQ;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.htBoard.htmodel.dto.HTNoticeDTO;
import creation.htBoard.htmodel.service.HTFAQService;
import creation.htBoard.htmodel.service.HTNoticeService;


@WebServlet("/ht/FAQ/detail")
public class HTFaqSelectDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		int no = Integer.valueOf(request.getParameter("no"));
		
		HTFAQService noticeService = new HTFAQService();
		
		HTNoticeDTO htNoticeDetail = noticeService.selectNoticeDetail(no);
		
		String path ="";
		if(htNoticeDetail != null) {
			path = "/WEB-INF/views/htBoard/htFAQ/htFaqDetail.jsp";
			request.setAttribute("htnotice", htNoticeDetail);
		}else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지사항 상세 보기 조회에 실패하셨습니다.");
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

}

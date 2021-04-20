package creation.htBoard.controller.htNotice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.htBoard.htmodel.dto.HTNoticeDTO;
import creation.htBoard.htmodel.service.HTNoticeService;


@WebServlet("/ht/NTC/notice/detail")
public class HTNoticeSelectDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String noticeNo = request.getParameter("no");
		
		int no = Integer.valueOf(request.getParameter("no"));
		
		HTNoticeService noticeService = new HTNoticeService();
		
		HTNoticeDTO htNoticeDetail = noticeService.selectNoticeDetail(no);
		
		String path ="";
		if(htNoticeDetail != null) {
			path = "/WEB-INF/views/htBoard/htNotice/htnoticeDetail.jsp";
			request.setAttribute("htnotice", htNoticeDetail);
		}else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지사항 상세 보기 조회에 실패하셨습니다.");
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

}

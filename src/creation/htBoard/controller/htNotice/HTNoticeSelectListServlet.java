package creation.htBoard.controller.htNotice;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.common.paging.htPagenation;
import creation.htBoard.htmodel.dto.HTNoticeDTO;
import creation.htBoard.htmodel.dto.HTPageInfoDTO;
import creation.htBoard.htmodel.service.HTNoticeService;

@WebServlet("/ht/NTC/notice/list")
public class HTNoticeSelectListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String currentPage = request.getParameter("currentPage");
		
		int pageNo = 1; 
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		HTNoticeService htnoticeService = new HTNoticeService();
		int totalCount = htnoticeService.selectTotalCount();
		System.out.println("게시 가능한 게시물의 총 갯수 : " + totalCount);
		
		int limit = 10;
		
		int buttonAmount = 5; 
		
		HTPageInfoDTO pageInfo = htPagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		

		// 페이지 리스트
		List<HTNoticeDTO> htnoticeList = htnoticeService.selectnoticeList(pageInfo);
		String path = "";
		if(!htnoticeList.isEmpty()) {		
			path = "/WEB-INF/views/htBoard/htNotice/htnoticeList.jsp";
			request.setAttribute("htnoticeList", htnoticeList);
			request.setAttribute("pageInfo", pageInfo);
		} else {						
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지사항 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	

	}
}

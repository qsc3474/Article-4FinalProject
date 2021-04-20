package creation.board.controller.FAQ;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.board.model.dto.HPBoardDTO;
import creation.board.model.dto.PageInfoDTO;
import creation.board.model.service.HPFAQBoardService;
import creation.common.paging.Pagenation;

@WebServlet("/hp/faq/select/list")
public class HPFAQSelectListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String currentPage = request.getParameter("currentPage");
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			
			pageNo = Integer.valueOf(currentPage);
			
			if(pageNo < 1) {
				
				pageNo = 1;
				
			}
			
		}
		
		
		HPFAQBoardService boardService = new HPFAQBoardService();
		
		int totalCount = boardService.selectTotalCount();
		
		String recordsPerPage = request.getParameter("recordsPerPage");
		
		int limit = 10;
		
		if(recordsPerPage != null && !"def".equals(recordsPerPage) && !"".equals(recordsPerPage)) {
			
			limit = Integer.valueOf(recordsPerPage);
			
		}
		
		int buttonAmount = 10;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		List<HPBoardDTO> HPFAQList = boardService.selectList(pageInfo);
		
		String path = "";
		
		if(!HPFAQList.isEmpty()) {
			
			path = "/WEB-INF/views/board/boardFAQ.jsp";
			request.setAttribute("HPFAQList", HPFAQList);
			request.setAttribute("pageInfo", pageInfo);
			
		} else {
			
			path = "/WEB-INF/views/board/boardFAQ.jsp";
			request.setAttribute("HPFAQList", HPFAQList);
			request.setAttribute("pageInfo", pageInfo);
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

}

package creation.board.controller.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.board.model.dto.HPBoardDTO;
import creation.board.model.dto.PageInfoDTO;
import creation.board.model.service.HPNoticeBoardService;
import creation.common.paging.Pagenation;

/**
 * Servlet implementation class HPNoticeSelectListServlet
 */
@WebServlet("/hp/notice/select/list")
public class HPNoticeSelectListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	String currentPage = request.getParameter("currentPage");
	
	int pageNo = 1;
	System.out.println(currentPage);
	if(currentPage != null && !"".equals(currentPage)) {
		
		pageNo = Integer.valueOf(currentPage);
		
		if(pageNo < 1) {
			
			pageNo = 1;
			
		}
	}
		HPNoticeBoardService boardService = new HPNoticeBoardService();

		int totalCount = boardService.selectTotalCount();
		
		
		
		int limit = 10;
		
		
		int buttonAmount = 10;
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		List<HPBoardDTO> HPNCTList = boardService.selectList(pageInfo);
		
		System.out.println(HPNCTList);
		String path = "";
		
		if(!HPNCTList.isEmpty()) {
			
			path = "/WEB-INF/views/board/HPnotice.jsp";
			request.setAttribute("HPNCTList", HPNCTList);
			request.setAttribute("pageInfo", pageInfo);
			
		} else {
			
			path = "/WEB-INF/views/board/HPnotice.jsp";
			request.setAttribute("HPNCTList", HPNCTList);
			request.setAttribute("pageInfo", pageInfo);
			
		}
		System.out.println(path);
		request.getRequestDispatcher(path).forward(request, response);
	
	}
	}
	
	

	


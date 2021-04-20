package creation.board.controller.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.board.model.dto.HPBoardDTO;
import creation.board.model.service.HPFAQBoardService;
import creation.htBoard.htmodel.dto.HTNoticeDTO;
import creation.htBoard.htmodel.service.HTFAQService;

@WebServlet("/hp/board/update")
public class HPBoardUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = Integer.valueOf(request.getParameter("no"));
		System.out.println(request.getParameter("categoryNo"));
		String categoryNo = request.getParameter("categoryNo");
		
		HPFAQBoardService boardService = new HPFAQBoardService();
		
		HPBoardDTO board = null;
		
		if("HP_RV".equals(categoryNo) || "HP_QNA".equals(categoryNo)) {
			
			board = boardService.anotherSelectDetail(no, categoryNo);
			
		} else {
		
			board = boardService.selectDetail(no);
		
		}
		
		String path ="";
		
		if(board != null) {
			
			path = "/WEB-INF/views/board/boardUpdateForm.jsp";
			request.setAttribute("board", board);
			
		}else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "수정할 게시물 조회 실패!");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int no = Integer.valueOf(request.getParameter("boardNo"));
		String categoryNo = request.getParameter("categoryNo");

		HPBoardDTO updateBoard = new HPBoardDTO();
		updateBoard.setTitle(title);
		updateBoard.setContent(content);
		updateBoard.setNo(no);
		updateBoard.setCategoryNo(categoryNo);

		System.out.println(updateBoard);
		
		HPFAQBoardService boardService = new HPFAQBoardService();
		
		int result = 0;
		
		if("HP_RV".equals(categoryNo) || "HP_QNA".equals(categoryNo)) {
			
			result = boardService.anotherUpdateBoard(updateBoard);
			
		} else {
		
			result = boardService.updateBoard(updateBoard);
		
		}

		String page = "";
		if (result > 0) {
			
			page = "/WEB-INF/views/common/success.jsp";
			String successCode = "";
			switch(categoryNo) {
			case "HP_RV": successCode = "updateRVBoard"; break;
			case "HP_QNA": successCode = "updateQNABoard"; break;
			case "HP_FAQ": successCode = "updateFAQBoard"; break;
			case "HP_INFO": successCode = "updateINFOBoard"; break;
			case "HP_NTC": successCode = "updateNTCBoard"; break;
			}
			request.setAttribute("successCode", successCode);
			
		} else {
			
			page = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지사항 수정 실패!");

		}
		
		request.getRequestDispatcher(page).forward(request, response);
		
	}

}

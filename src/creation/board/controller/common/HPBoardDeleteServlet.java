package creation.board.controller.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.board.model.dto.HPBoardDTO;
import creation.board.model.service.HPFAQBoardService;

/**
 * Servlet implementation class HPBoardDeleteServlet
 */
@WebServlet("/hp/board/delete")
public class HPBoardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int boardNo = Integer.valueOf(request.getParameter("no"));
		String categoryNo = request.getParameter("categoryNo");
		
		HPFAQBoardService boardService = new HPFAQBoardService();
		
		HPBoardDTO deleteBoard = new HPBoardDTO();
		deleteBoard.setNo(boardNo);
		deleteBoard.setCategoryNo(categoryNo);
		
		int result = 0;
		
		if("HP_RV".equals(categoryNo) || "HP_QNA".equals(categoryNo)) {
			
			result = boardService.anotherTableDeleteBoard(deleteBoard);
			
		} else {
		
			result = boardService.deleteBoard(deleteBoard);
		
		}
		
		String path = "";
		
		if(result > 0) {
			
			path = "/WEB-INF/views/common/success.jsp";
			String successCode = "";
			switch(categoryNo) {
			case "HP_RV": successCode = "deleteRVBoard"; break;
			case "HP_QNA": successCode = "deleteQNABoard"; break;
			case "HP_FAQ": successCode = "deleteFAQBoard"; break;
			case "HP_INFO": successCode = "deleteINFOBoard"; break;
			case "HP_NTC": successCode = "deleteNTCBoard"; break;
			}
			request.setAttribute("successCode", successCode);
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "게시글 작성에 실패하셨습니다.");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

}

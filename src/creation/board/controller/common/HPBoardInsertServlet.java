package creation.board.controller.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.board.model.dto.HPBoardDTO;
import creation.board.model.service.HPFAQBoardService;
import creation.member.model.dto.MemberDTO;

@WebServlet("/hp/board/insert")
public class HPBoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/board/boardInsertForm.jsp";
		String categoryNo = request.getParameter("categoryNo");
		request.setAttribute("categoryNo", categoryNo);
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		int no = Integer.valueOf(request.getParameter("memberNo"));
		String content = request.getParameter("content");
		String categoryNo = request.getParameter("boardCategory");
		
		HPBoardDTO insertBoard = new HPBoardDTO();
		
		insertBoard.setWriter(new MemberDTO());
		
		insertBoard.setTitle(title);
		insertBoard.setContent(content);
		insertBoard.setCategoryNo(categoryNo);
		insertBoard.getWriter().setNo(no);
		
		HPFAQBoardService boardService = new HPFAQBoardService();
		
		int result = 0;
		
		if("HP_RV".equals(categoryNo) || "HP_QNA".equals(categoryNo)) {
			
			result = boardService.anotherTableInsertBoard(insertBoard);
			
		} else {
		
			result = boardService.insertBoard(insertBoard);
		
		}
		
		String path = "";
		
		if(result > 0) {
			
			String successCode = "";
			switch(categoryNo) {
			case "HP_RV": successCode = "insertRVBoard"; break;
			case "HP_QNA": successCode = "insertQNABoard"; break;
			case "HP_FAQ": successCode = "insertFAQBoard"; break;
			case "HP_INFO": successCode = "insertINFOBoard"; break;
			case "HP_NTC": successCode = "insertNTCBoard"; break;
			}
			System.out.println();
			
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", successCode);
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "게시글 작성에 실패하셨습니다.");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}

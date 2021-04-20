package creation.board.controller.notice;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.board.model.dto.HPBoardDTO;
import creation.board.model.service.HPNoticeBoardService;


/**
 * Servlet implementation class HPNoticeDetailServlet
 */
@WebServlet("/hp/notice/detail")
public class HPNoticeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String hpBdNo = request.getParameter("no");
		int no = Integer.valueOf(hpBdNo);
		System.out.println(no);
		HPBoardDTO board = new HPNoticeBoardService().selectDetail(no);
		
		String path = "";
		
		if(board != null) {
			
			path = "/WEB-INF/views/board/detailBoard.jsp";
			request.setAttribute("board", board);
			
		} else {
			
			path = "/WEB-INF/view/common/failed.jsp";
			request.setAttribute("message", "게시글을 조회할 수 없습니다.");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	
}


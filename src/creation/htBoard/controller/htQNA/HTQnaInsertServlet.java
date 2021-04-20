package creation.htBoard.controller.htQNA;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import creation.htBoard.htmodel.dto.HTNoticeDTO;
import creation.htBoard.htmodel.service.HTQnaService;
import creation.member.model.dto.MemberDTO;

@WebServlet("/ht/QNA/insert")
public class HTQnaInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String path = "/WEB-INF/views/htBoard/htQNA/htInsertQNAForm.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			String title = request.getParameter("title");
			int no = Integer.valueOf(request.getParameter("memberNo"));
			String content = request.getParameter("content");
			String category = request.getParameter("category");
			
			HTNoticeDTO newhtNotice = new HTNoticeDTO();
			newhtNotice.setWriter(new MemberDTO());
		
			newhtNotice.setTitle(title);
			newhtNotice.setContent(content);
			newhtNotice.setCategoryNo(category);
			newhtNotice.getWriter().setNo(no);
			
			HTQnaService noticeService = new HTQnaService();
			int result = noticeService.insertNotice(newhtNotice);
			
			System.out.println(newhtNotice);
			
			String path = "";
			if(result > 0) {
				path ="/WEB-INF/views/common/thSuccess.jsp";
				request.setAttribute("successCode", "thInsertQNA");
			}else {
				path ="/WEB-INF/views/common/failed.jsp";
				request.setAttribute("message", "공지사항 등록에 실패하셨습니다.");
			}
			request.getRequestDispatcher(path).forward(request, response);
		
		
		}

}





package creation.board.controller.report;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.board.model.dto.ReportDTO;
import creation.board.model.service.HPBoardReportService;

@WebServlet("/hp/report/list")
public class HPReportSelectListSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = Integer.valueOf(request.getParameter("no"));
		
		HPBoardReportService reportService = new HPBoardReportService();
		
		List<ReportDTO> reportList = reportService.selectList(no);
		
		String path = "";
		if(!reportList.isEmpty()) {
			
			path = "신고리스트를 뿌려줄 화면 경로";
			request.setAttribute("reportList", reportList);
			
		} else {
			
			path = "신고리스트를 뿌려줄 화면 경로";
			request.setAttribute("reportList", reportList);
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}

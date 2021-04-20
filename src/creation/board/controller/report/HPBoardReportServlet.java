package creation.board.controller.report;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.board.model.dto.ReportDTO;
import creation.board.model.service.HPBoardReportService;

@WebServlet("/hp/board/report")
public class HPBoardReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String reportReasonNo = request.getParameter("reportCategory");
		String reportReasonContent = null;
		
		System.out.println(reportReasonNo);
		System.out.println("m5".equals(reportReasonNo));
		
		if("m5".equals(reportReasonNo)) {
			
			reportReasonContent = request.getParameter("reportContent");
			
		}
		
		int reportBoardNo = Integer.valueOf(request.getParameter("reportBoardNo"));
		String reportBoardCategory = request.getParameter("reportBoardCategory");
		int reporterMemberNo = Integer.valueOf(request.getParameter("reporterMemberNo"));
		int reportWriterNo = Integer.valueOf(request.getParameter("reportWriterNo"));
		
		ReportDTO report = new ReportDTO();
		report.setReportBoardNo(reportBoardNo);
		report.setReportBoardCategoryNo(reportBoardCategory);
		report.setReporterMemberNo(reporterMemberNo);
		report.setReportCategoryNo(reportReasonNo);
		report.setReportedWriterNo(reportWriterNo);
		
		if("m5".equals(reportReasonNo)) {
			
			report.setReportReasonContent(reportReasonContent);
			
		}
		
		HPBoardReportService reportService = new HPBoardReportService();
		
		int result = reportService.insertReport(report);
		String path = "";
		
		System.out.println(result);
		
		if(result > 0) {
			
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "boardReport");
			
		} else {
			
			
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}

package creation.board.model.service;

import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import creation.board.model.dao.HPBoardReportDAO;
import creation.board.model.dto.PageInfoDTO;
import creation.board.model.dto.ReportCountDTO;
import creation.board.model.dto.ReportDTO;

public class HPBoardReportService {
	
	private final HPBoardReportDAO reportDAO;
	
	public HPBoardReportService() {
		
		reportDAO = new HPBoardReportDAO();
		
	}

	public int insertReport(ReportDTO report) {
		
		Connection con = getConnection();
		
		int result = reportDAO.insertReport(con, report);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
		
	}

	public int selectTotalCount() {
		
		Connection con = getConnection();
		
		int totalCount = reportDAO.selectTotalCount(con);
		
		close(con);
		
		return totalCount;
		
	}

	public List<ReportCountDTO> selectCountList(PageInfoDTO pageInfo) {

		Connection con = getConnection();
		
		List<ReportCountDTO> reportCountList = reportDAO.selectCountList(con, pageInfo);
		
		close(con);
		
		return reportCountList;
		
	}

	public List<ReportDTO> selectList(int no) {

		Connection con = getConnection();
		
		List<ReportDTO> reportList = reportDAO.selectList(con, no);
		
		close(con);
		
		return reportList;
		
	}
	
}

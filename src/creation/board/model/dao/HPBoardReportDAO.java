package creation.board.model.dao;

import static creation.common.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import creation.board.model.dto.HPBoardDTO;
import creation.board.model.dto.PageInfoDTO;
import creation.board.model.dto.ReportCategoryDTO;
import creation.board.model.dto.ReportCountDTO;
import creation.board.model.dto.ReportDTO;
import creation.common.config.ConfigLocation;
import creation.member.model.dto.MemberDTO;

public class HPBoardReportDAO {
	
	private final Properties prop;
	
	public HPBoardReportDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "report/report-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}

	public int insertReport(Connection con, ReportDTO report) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "";
		if("m5".equals(report.getReportCategoryNo())) {
			
			query = prop.getProperty("insertReportWithContent");
			
		} else {
			
			query = prop.getProperty("insertReport");
			
		}
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, report.getReportBoardNo());
			pstmt.setString(2, report.getReportBoardCategoryNo());
			pstmt.setInt(3, report.getReporterMemberNo());
			pstmt.setString(4, report.getReportCategoryNo());
			pstmt.setInt(5, report.getReportedWriterNo());
			
			if("m5".equals(report.getReportCategoryNo())) {
			
				pstmt.setString(6, report.getReportReasonContent());
			
			}
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(pstmt);
			
		}
		System.out.println(result);
		
		return result;
		
	}

	public int selectTotalCount(Connection con) {

		Statement stmt = null;
		ResultSet rset = null;
		
		int totalCount = 0;
		
		String query = prop.getProperty("selectTotalCount");
		
		try {
			
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				
				totalCount = rset.getInt(1);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(stmt);
			
		}
		
		return totalCount;
		
	}

	public List<ReportCountDTO> selectCountList(Connection con, PageInfoDTO pageInfo) {
		
		Statement stmt = null;
		ResultSet rset = null;
		
		List<ReportCountDTO> reportCountList = null;
		
		String query = prop.getProperty("selectCountList");
		
		try {
			
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			reportCountList = new ArrayList<>();
			
			while(rset.next()) {
				
				ReportCountDTO count = new ReportCountDTO();
				count.setReportedBoard(new HPBoardDTO());
				
				count.setReportedBoardNo(rset.getInt("REPORT_BD_NO"));
				count.getReportedBoard().setTitle("HP_RV_TITLE");
				count.setCount(rset.getInt("COUNT(A.REPORT_BD_NO)"));
				
				reportCountList.add(count);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(stmt);
			
		}
		
		return reportCountList;
		
	}

	public List<ReportDTO> selectList(Connection con, int no) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		List<ReportDTO> reportList = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, no);
			
			rset = pstmt.executeQuery();
			
			reportList = new ArrayList<>();
			
			while(rset.next()) {
				
				ReportDTO report = new ReportDTO();
				
				report.setReportBoard(new HPBoardDTO());
				report.setReporter(new MemberDTO());
				report.setReportedWriter(new MemberDTO());
				report.setReportCategoryName(new ReportCategoryDTO());
				
				report.setReportNo(rset.getInt("REPORT_NO"));
				report.setReportBoardNo(rset.getInt("REPORT_BD_NO"));
				report.setReportBoardCategoryNo(rset.getString("REPORT_BD_CATEGORY_NO"));
				report.setReporterMemberNo(rset.getInt("REPORTER_MEM_NO"));
				report.setReportCategoryNo(rset.getString("REPORT_REASON_NO"));
				report.setReporterMemberNo(rset.getInt("REPORT_BD_WRITER_NO"));
				report.setReportReasonContent(rset.getString("REPORT_CONTENT"));
				report.getReportBoard().setTitle(rset.getString("HP_RV_TITLE"));
				report.getReporter().setName(rset.getString("MEM_NAME"));
				report.getReportedWriter().setName(rset.getString("MEM_NAME"));
				report.getReportCategoryName().setReportCategoryName(rset.getString("REPORT_REASON"));
				
				reportList.add(report);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
			
		}
		
		return reportList;
		
	}

}

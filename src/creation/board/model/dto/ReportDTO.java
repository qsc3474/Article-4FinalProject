package creation.board.model.dto;

import java.io.Serializable;

import creation.member.model.dto.MemberDTO;

public class ReportDTO implements Serializable{

	private static final long serialVersionUID = 5683557383292194882L;
	
	private int reportNo;
	private String reportCategoryNo;
	private int reportBoardNo;
	private String reportBoardCategoryNo;
	private int reporterMemberNo;
	private int reportedWriterNo;
	private String reportReasonContent;
	
	private ReportDTO reportReason;
	private HPBoardDTO reportBoard;
	private ReportCategoryDTO reportCategoryName;
	private MemberDTO reporter;
	private MemberDTO reportedWriter;
	
	public ReportDTO() {}
	public ReportDTO(int reportNo, String reportCategoryNo, int reportBoardNo, String reportBoardCategoryNo,
			int reporterMemberNo, int reportedWriterNo, String reportReasonContent, ReportDTO reportReason,
			HPBoardDTO reportBoard, ReportCategoryDTO reportCategoryName, MemberDTO reporter,
			MemberDTO reportedWriter) {
		this.reportNo = reportNo;
		this.reportCategoryNo = reportCategoryNo;
		this.reportBoardNo = reportBoardNo;
		this.reportBoardCategoryNo = reportBoardCategoryNo;
		this.reporterMemberNo = reporterMemberNo;
		this.reportedWriterNo = reportedWriterNo;
		this.reportReasonContent = reportReasonContent;
		this.reportReason = reportReason;
		this.reportBoard = reportBoard;
		this.reportCategoryName = reportCategoryName;
		this.reporter = reporter;
		this.reportedWriter = reportedWriter;
	}
	
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public String getReportCategoryNo() {
		return reportCategoryNo;
	}
	public void setReportCategoryNo(String reportCategoryNo) {
		this.reportCategoryNo = reportCategoryNo;
	}
	public int getReportBoardNo() {
		return reportBoardNo;
	}
	public void setReportBoardNo(int reportBoardNo) {
		this.reportBoardNo = reportBoardNo;
	}
	public String getReportBoardCategoryNo() {
		return reportBoardCategoryNo;
	}
	public void setReportBoardCategoryNo(String reportBoardCategoryNo) {
		this.reportBoardCategoryNo = reportBoardCategoryNo;
	}
	public int getReporterMemberNo() {
		return reporterMemberNo;
	}
	public void setReporterMemberNo(int reporterMemberNo) {
		this.reporterMemberNo = reporterMemberNo;
	}
	public int getReportedWriterNo() {
		return reportedWriterNo;
	}
	public void setReportedWriterNo(int reportedWriterNo) {
		this.reportedWriterNo = reportedWriterNo;
	}
	public String getReportReasonContent() {
		return reportReasonContent;
	}
	public void setReportReasonContent(String reportReasonContent) {
		this.reportReasonContent = reportReasonContent;
	}
	public ReportDTO getReportReason() {
		return reportReason;
	}
	public void setReportReason(ReportDTO reportReason) {
		this.reportReason = reportReason;
	}
	public HPBoardDTO getReportBoard() {
		return reportBoard;
	}
	public void setReportBoard(HPBoardDTO reportBoard) {
		this.reportBoard = reportBoard;
	}
	public ReportCategoryDTO getReportCategoryName() {
		return reportCategoryName;
	}
	public void setReportCategoryName(ReportCategoryDTO reportCategoryName) {
		this.reportCategoryName = reportCategoryName;
	}
	public MemberDTO getReporter() {
		return reporter;
	}
	public void setReporter(MemberDTO reporter) {
		this.reporter = reporter;
	}
	public MemberDTO getReportedWriter() {
		return reportedWriter;
	}
	public void setReportedWriter(MemberDTO reportedWriter) {
		this.reportedWriter = reportedWriter;
	}
	
	@Override
	public String toString() {
		return "ReportDTO [reportNo=" + reportNo + ", reportCategoryNo=" + reportCategoryNo + ", reportBoardNo="
				+ reportBoardNo + ", reportBoardCategoryNo=" + reportBoardCategoryNo + ", reporterMemberNo="
				+ reporterMemberNo + ", reportedWriterNo=" + reportedWriterNo + ", reportReasonContent="
				+ reportReasonContent + ", reportReason=" + reportReason + ", reportBoard=" + reportBoard
				+ ", reportCategoryName=" + reportCategoryName + ", reporter=" + reporter + ", reportedWriter="
				+ reportedWriter + "]";
	}
	
}

package creation.board.model.dto;

public class ReportCategoryDTO {

	private String reportCategoryNo;
	private String reportCategoryName;
	
	public ReportCategoryDTO() {}
	public ReportCategoryDTO(String reportCategoryNo, String reportCategoryName) {
		this.reportCategoryNo = reportCategoryNo;
		this.reportCategoryName = reportCategoryName;
	}
	
	public String getReportCategoryNo() {
		return reportCategoryNo;
	}
	public void setReportCategoryNo(String reportCategoryNo) {
		this.reportCategoryNo = reportCategoryNo;
	}
	public String getReportCategoryName() {
		return reportCategoryName;
	}
	public void setReportCategoryName(String reportCategoryName) {
		this.reportCategoryName = reportCategoryName;
	}
	
	@Override
	public String toString() {
		return "ReportCategoryDTO [reportCategoryNo=" + reportCategoryNo + ", reportCategoryName=" + reportCategoryName
				+ "]";
	}
	
}

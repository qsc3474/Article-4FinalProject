package creation.board.model.dto;

import java.io.Serializable;

public class ReportCountDTO implements Serializable{

	private static final long serialVersionUID = -1970674777409075777L;
	
	private int reportedBoardNo;
	private HPBoardDTO reportedBoard;
	private int count;
	
	public ReportCountDTO() {}
	public ReportCountDTO(int reportedBoardNo, HPBoardDTO reportedBoard, int count) {
		this.reportedBoardNo = reportedBoardNo;
		this.reportedBoard = reportedBoard;
		this.count = count;
	}
	
	public int getReportedBoardNo() {
		return reportedBoardNo;
	}
	public void setReportedBoardNo(int reportedBoardNo) {
		this.reportedBoardNo = reportedBoardNo;
	}
	public HPBoardDTO getReportedBoard() {
		return reportedBoard;
	}
	public void setReportedBoard(HPBoardDTO reportedBoard) {
		this.reportedBoard = reportedBoard;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	@Override
	public String toString() {
		return "ReportCountDTO [reportedBoardNo=" + reportedBoardNo + ", reportedBoard=" + reportedBoard + ", count="
				+ count + "]";
	}
	
}

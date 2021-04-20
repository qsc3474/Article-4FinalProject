package creation.htBoard.htmodel.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import creation.member.model.dto.MemberDTO;

public class HTNoticeDTO implements Serializable{

	private static final long serialVersionUID = -7923081726568083592L;
	
	private int no;
	private String title;
	private String content;
	private java.sql.Date drawupDate;
	private int watched;
	private int memNo;
	private String answer;
	private MemberDTO writer;
	private String categoryNo;
	private String status;
	private int cmtCount;
	private List<HTFileinfoDTO> fileinfoList;
	
	public HTNoticeDTO() {
		
	}

	public HTNoticeDTO(int no, String title, String content, Date drawupDate, int watched, int memNo, String answer,
			MemberDTO writer, String categoryNo, String status, int cmtCount, List<HTFileinfoDTO> fileinfoList) {
		this.no = no;
		this.title = title;
		this.content = content;
		this.drawupDate = drawupDate;
		this.watched = watched;
		this.memNo = memNo;
		this.answer = answer;
		this.writer = writer;
		this.categoryNo = categoryNo;
		this.status = status;
		this.cmtCount = cmtCount;
		this.fileinfoList = fileinfoList;
	}

	public List<HTFileinfoDTO> getFileinfoList() {
		return fileinfoList;
	}

	public void setFileinfoList(List<HTFileinfoDTO> fileinfoList) {
		this.fileinfoList = fileinfoList;
	}

	public HTNoticeDTO(int no, String title, String content, Date drawupDate, int watched, int memNo, String answer,
			MemberDTO writer, String categoryNo, String status, int cmtCount) {
		this.no = no;
		this.title = title;
		this.content = content;
		this.drawupDate = drawupDate;
		this.watched = watched;
		this.memNo = memNo;
		this.answer = answer;
		this.writer = writer;
		this.categoryNo = categoryNo;
		this.status = status;
		this.cmtCount = cmtCount;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public java.sql.Date getDrawupDate() {
		return drawupDate;
	}


	public void setDrawupDate(java.sql.Date drawupDate) {
		this.drawupDate = drawupDate;
	}


	public int getWatched() {
		return watched;
	}


	public void setWatched(int watched) {
		this.watched = watched;
	}


	public int getMemNo() {
		return memNo;
	}


	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}


	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	}


	public MemberDTO getWriter() {
		return writer;
	}


	public void setWriter(MemberDTO writer) {
		this.writer = writer;
	}


	public String getCategoryNo() {
		return categoryNo;
	}


	public void setCategoryNo(String categoryNo) {
		this.categoryNo = categoryNo;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public int getCmtCount() {
		return cmtCount;
	}


	public void setCmtCount(int cmtCount) {
		this.cmtCount = cmtCount;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "HTNoticeDTO [no=" + no + ", title=" + title + ", content=" + content + ", drawupDate=" + drawupDate
				+ ", watched=" + watched + ", memNo=" + memNo + ", answer=" + answer + ", writer=" + writer
				+ ", categoryNo=" + categoryNo + ", status=" + status + ", cmtCount=" + cmtCount + ", fileinfoList="
				+ fileinfoList + "]";
	}


	


	
	
	
	
	
	
	
}

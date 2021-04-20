package creation.comment.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import creation.member.model.dto.MemberDTO;

public class CommentDTO implements Serializable{

	private static final long serialVersionUID = -8498140273267647547L;
	
	private int no;
	private String content;
	private int memNo;
	private MemberDTO writer;
	private String refBoardNo;
	private String status;
	private java.sql.Date writeTime;
	private int parentCmtNo;
	
	public CommentDTO() {}
	public CommentDTO(int no, String content, int memNo, MemberDTO writer, String refBoardNo, String status,
			Date writeTime, int parentCmtNo) {
		this.no = no;
		this.content = content;
		this.memNo = memNo;
		this.writer = writer;
		this.refBoardNo = refBoardNo;
		this.status = status;
		this.writeTime = writeTime;
		this.parentCmtNo = parentCmtNo;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public MemberDTO getWriter() {
		return writer;
	}
	public void setWriter(MemberDTO writer) {
		this.writer = writer;
	}
	public String getRefBoardNo() {
		return refBoardNo;
	}
	public void setRefBoardNo(String refBoardNo) {
		this.refBoardNo = refBoardNo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public java.sql.Date getWriteTime() {
		return writeTime;
	}
	public void setWriteTime(java.sql.Date writeTime) {
		this.writeTime = writeTime;
	}
	public int getParentCmtNo() {
		return parentCmtNo;
	}
	public void setParentCmtNo(int parentCmtNo) {
		this.parentCmtNo = parentCmtNo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "CommentDTO [no=" + no + ", content=" + content + ", memNo=" + memNo + ", writer=" + writer
				+ ", refBoardNo=" + refBoardNo + ", status=" + status + ", writeTime=" + writeTime + ", parentCmtNo="
				+ parentCmtNo + "]";
	}
	
}

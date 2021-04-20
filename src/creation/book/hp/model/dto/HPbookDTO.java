package creation.book.hp.model.dto;

import java.io.Serializable;
import java.sql.Date;

import creation.member.model.dto.MemberDTO;
import creation.pet.model.dto.PetDTO;

public class HPbookDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2654453556639355122L;

	
	private int no;
	private String time;
	private int memberNo;
	private String status;
	private String petName;
	private String petKind;
	private String petGender;
	private String petAge;
	private String petNeut;
	private String message;

	public HPbookDTO() {
		
	}

	public HPbookDTO(int no, String time, int memberNo, String status, String petName, String petKind, String petGender,
			String petAge, String petNeut, String message) {
		super();
		this.no = no;
		this.time = time;
		this.memberNo = memberNo;
		this.status = status;
		this.petName = petName;
		this.petKind = petKind;
		this.petGender = petGender;
		this.petAge = petAge;
		this.petNeut = petNeut;
		this.message = message;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String date) {
		this.time = date;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public String getPetKind() {
		return petKind;
	}

	public void setPetKind(String petKind) {
		this.petKind = petKind;
	}

	public String getPetGender() {
		return petGender;
	}

	public void setPetGender(String petGender) {
		this.petGender = petGender;
	}

	public String getPetAge() {
		return petAge;
	}

	public void setPetAge(String petAge) {
		this.petAge = petAge;
	}

	public String getPetNeut() {
		return petNeut;
	}

	public void setPetNeut(String petNeut) {
		this.petNeut = petNeut;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "HPbookDTO [no=" + no + ", time=" + time + ", memberNo=" + memberNo + ", status=" + status + ", petName="
				+ petName + ", petKind=" + petKind + ", petGender=" + petGender + ", petAge=" + petAge + ", petNeut="
				+ petNeut + ", message=" + message + "]";
	}

	
	
	

	
	
	
}

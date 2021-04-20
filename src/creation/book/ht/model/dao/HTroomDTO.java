package creation.book.ht.model.dao;

import java.io.Serializable;
import java.util.Date;

import creation.member.model.dto.MemberDTO;
import creation.pet.model.dto.PetDTO;

public class HTroomDTO implements Serializable{

	
	private static final long serialVersionUID = 7178195182017594404L;
	
	private int no;
	private String type;
	private String roomNo;
	private String checkIn;
	private String checkOut;
	private String status;
	private int memNo;
	private String petNo;
	private String petName;
	private String petKind;
	private String petGender;
	private String petAge;
	private String petNeut;
	private String message;
	
	
	public HTroomDTO() {
		
	}


	public HTroomDTO(int no, String type, String roomNo, String checkIn, String checkOut, String status, int memNo,
			String petNo, String petName, String petKind, String petGender, String petAge, String petNeut,
			String message) {
		super();
		this.no = no;
		this.type = type;
		this.roomNo = roomNo;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.status = status;
		this.memNo = memNo;
		this.petNo = petNo;
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


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getRoomNo() {
		return roomNo;
	}


	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}


	public String getCheckIn() {
		return checkIn;
	}


	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}


	public String getCheckOut() {
		return checkOut;
	}


	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public int getMemNo() {
		return memNo;
	}


	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}


	public String getPetNo() {
		return petNo;
	}


	public void setPetNo(String petNo) {
		this.petNo = petNo;
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


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "HTroomDTO [no=" + no + ", type=" + type + ", roomNo=" + roomNo + ", checkIn=" + checkIn + ", checkOut="
				+ checkOut + ", status=" + status + ", memNo=" + memNo + ", petNo=" + petNo + ", petName=" + petName
				+ ", petKind=" + petKind + ", petGender=" + petGender + ", petAge=" + petAge + ", petNeut=" + petNeut
				+ ", message=" + message + "]";
	}


	

}

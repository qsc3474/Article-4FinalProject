package creation.book.ht.model.dao;

import java.io.Serializable;
import java.util.Date;

import creation.member.model.dto.MemberDTO;
import creation.pet.model.dto.PetDTO;

public class HTeventDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6557798431426760029L;
	
	private int eventNo;
	private String eventType;
	private String time;
	private String timeOut;
	private String eventStaus;
	private int memNo;
	private String petNo;
	private String petName;
	private String kind;
	private String petGender;
	private String petAge;
	private String petNeut;
	private String message;
	
	public HTeventDTO() {
	}

	public HTeventDTO(int eventNo, String eventType, String time, String timeOut, String eventStaus, int memNo,
			String petNo, String petName, String kind, String petGender, String petAge, String petNeut,
			String message) {
		this.eventNo = eventNo;
		this.eventType = eventType;
		this.time = time;
		this.timeOut = timeOut;
		this.eventStaus = eventStaus;
		this.memNo = memNo;
		this.petNo = petNo;
		this.petName = petName;
		this.kind = kind;
		this.petGender = petGender;
		this.petAge = petAge;
		this.petNeut = petNeut;
		this.message = message;
	}

	public int getEventNo() {
		return eventNo;
	}

	public void setEventNo(int eventNo) {
		this.eventNo = eventNo;
	}

	public String getEventType() {
		return eventType;
	}

	public void setEventType(String eventType) {
		this.eventType = eventType;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getTimeOut() {
		return timeOut;
	}

	public void setTimeOut(String timeOut) {
		this.timeOut = timeOut;
	}

	public String getEventStaus() {
		return eventStaus;
	}

	public void setEventStaus(String eventStaus) {
		this.eventStaus = eventStaus;
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

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
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
		return "HTeventDTO [eventNo=" + eventNo + ", eventType=" + eventType + ", time=" + time + ", timeOut=" + timeOut
				+ ", eventStaus=" + eventStaus + ", memNo=" + memNo + ", petNo=" + petNo + ", petName=" + petName
				+ ", kind=" + kind + ", petGender=" + petGender + ", petAge=" + petAge + ", petNeut=" + petNeut
				+ ", message=" + message + "]";
	}
	
	

	
	
	

}

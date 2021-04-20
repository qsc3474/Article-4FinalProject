package creation.member.model.dto;

import java.io.Serializable;
import java.sql.Date;

/**
 * @author joon
 *
 */
public class MemberDTO implements java.io.Serializable{
	
	private static final long serialVersionUID = -3774328171132786225L;
	
	private int no;
	private String id;
	private String pwd;
	private String name;
	private int phone;
	private String email;
	private String address;
	private java.sql.Date birthday;
	private java.sql.Date enrollDate;
	private String status;
	private String kind;
	private String grade;
	
	public MemberDTO() {}

	public MemberDTO(int no, String id, String pwd, String name, int phone, String email, String address, Date birthday,
			Date enrollDate, String status, String kind, String grade) {
		super();
		this.no = no;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.birthday = birthday;
		this.enrollDate = enrollDate;
		this.status = status;
		this.kind = kind;
		this.grade = grade;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public java.sql.Date getBirthday() {
		return birthday;
	}

	public void setBirthday(java.sql.Date birthday) {
		this.birthday = birthday;
	}

	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "MemberDTO [no=" + no + ", id=" + id + ", pwd=" + pwd + ", name=" + name + ", phone=" + phone
				+ ", email=" + email + ", address=" + address + ", birthday=" + birthday + ", enrollDate=" + enrollDate
				+ ", status=" + status + ", kind=" + kind + ", grade=" + grade + "]";
	}
	
}
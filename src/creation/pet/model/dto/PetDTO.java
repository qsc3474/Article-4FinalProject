package creation.pet.model.dto;

import java.io.Serializable;

public class PetDTO implements Serializable{

	private static final long serialVersionUID = 4532654868568354464L;
	
	private String code;
	private String gender;
	private String name;
	private int age;
	private String petKind;
	private String petNeutralization;
	private String petSpeciality;
	private int memNo;
	
	public PetDTO() {}

	public PetDTO(String code, String gender, String name, int age, String petKind, String petNeutralization,
			String petSpeciality, int memNo) {
		super();
		this.code = code;
		this.gender = gender;
		this.name = name;
		this.age = age;
		this.petKind = petKind;
		this.petNeutralization = petNeutralization;
		this.petSpeciality = petSpeciality;
		this.memNo = memNo;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPetKind() {
		return petKind;
	}

	public void setPetKind(String petKind) {
		this.petKind = petKind;
	}

	public String getPetNeutralization() {
		return petNeutralization;
	}

	public void setPetNeutralization(String petNeutralization) {
		this.petNeutralization = petNeutralization;
	}

	public String getPetSpeciality() {
		return petSpeciality;
	}

	public void setPetSpeciality(String petSpeciality) {
		this.petSpeciality = petSpeciality;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	@Override
	public String toString() {
		return "PetDTO [code=" + code + ", gender=" + gender + ", name=" + name + ", age=" + age + ", petKind="
				+ petKind + ", petNeutralization=" + petNeutralization + ", petSpeciality=" + petSpeciality + ", memNo="
				+ memNo + "]";
	}
	
	
}

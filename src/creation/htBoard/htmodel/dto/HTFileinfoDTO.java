package creation.htBoard.htmodel.dto;

import java.io.Serializable;

public class HTFileinfoDTO implements Serializable{

	
	private static final long serialVersionUID = 1536363838052689827L;
	
	private int fileNo;
	private int bdNo;
	private String bdCategoryNo;
	private String originFileName;
	private String filePath;
	private String saveFileName;
	private String fileExtension;
	public HTFileinfoDTO() {
	}
	public HTFileinfoDTO(int fileNo, int bdNo, String bdCategoryNo, String originFileName, String filePath,
			String saveFileName, String fileExtension) {
		this.fileNo = fileNo;
		this.bdNo = bdNo;
		this.bdCategoryNo = bdCategoryNo;
		this.originFileName = originFileName;
		this.filePath = filePath;
		this.saveFileName = saveFileName;
		this.fileExtension = fileExtension;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public int getBdNo() {
		return bdNo;
	}
	public void setBdNo(int bdNo) {
		this.bdNo = bdNo;
	}
	public String getBdCategoryNo() {
		return bdCategoryNo;
	}
	public void setBdCategoryNo(String bdCategoryNo) {
		this.bdCategoryNo = bdCategoryNo;
	}
	public String getOriginFileName() {
		return originFileName;
	}
	public void setOriginFileName(String originFileName) {
		this.originFileName = originFileName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getSaveFileName() {
		return saveFileName;
	}
	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}
	public String getFileExtension() {
		return fileExtension;
	}
	public void setFileExtension(String fileExtension) {
		this.fileExtension = fileExtension;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "HTFileinfoDTO [fileNo=" + fileNo + ", bdNo=" + bdNo + ", bdCategoryNo=" + bdCategoryNo
				+ ", originFileName=" + originFileName + ", filePath=" + filePath + ", saveFileName=" + saveFileName
				+ ", fileExtension=" + fileExtension + "]";
	}
	
	
}

package creation.board.model.dto;

import java.io.Serializable;

public class FileDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8400788178589276238L;
	private int no;
	private int bdNo;
	private String categoryNo;
	private String originName;
	private String path;
	private String thumbnailPath;
	private String name;
	private String type;
	private String extension;
	
	
	public FileDTO() {}
	public FileDTO(int no, int bdNo, String categoryNo, String originName, String path, String thumbnailPath,
			String name, String type, String extension) {
		this.no = no;
		this.bdNo = bdNo;
		this.categoryNo = categoryNo;
		this.originName = originName;
		this.path = path;
		this.thumbnailPath = thumbnailPath;
		this.name = name;
		this.type = type;
		this.extension = extension;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getBdNo() {
		return bdNo;
	}
	public void setBdNo(int bdNo) {
		this.bdNo = bdNo;
	}
	public String getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(String categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getOriginName() {
		return originName;
	}
	public void setOriginName(String originName) {
		this.originName = originName;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getThumbnailPath() {
		return thumbnailPath;
	}
	public void setThumbnailPath(String thumbnailPath) {
		this.thumbnailPath = thumbnailPath;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getExtension() {
		return extension;
	}
	public void setExtension(String extension) {
		this.extension = extension;
	}
	
	@Override
	public String toString() {
		return "FileDTO [no=" + no + ", bdNo=" + bdNo + ", categoryNo=" + categoryNo + ", originName=" + originName
				+ ", path=" + path + ", thumbnailPath=" + thumbnailPath + ", name=" + name + ", type=" + type
				+ ", extension=" + extension + "]";
	}
	
}

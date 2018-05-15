package entity;

public class CourseDoc {
	private int id;
	private String documentName;
	private String documentRoot;
	private String tepe;
	private int classID;
	private String introduce;
	private String date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDocumentName() {
		return documentName;
	}
	public void setDocumentName(String documentName) {
		this.documentName = documentName;
	}
	public String getDocumentRoot() {
		return documentRoot;
	}
	public void setDocumentRoot(String documentRoot) {
		this.documentRoot = documentRoot;
	}
	public String getTepe() {
		return tepe;
	}
	public void setTepe(String tepe) {
		this.tepe = tepe;
	}
	public int getClassID() {
		return classID;
	}
	public void setClassID(int classID) {
		this.classID = classID;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}

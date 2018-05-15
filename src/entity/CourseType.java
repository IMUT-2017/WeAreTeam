package entity;

public class CourseType {
	private int id;
	private String className;
	private String coverPaper;
	private String introduce;
	private String date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getCoverPaper() {
		return coverPaper;
	}
	public void setCoverPaper(String coverPaper) {
		this.coverPaper = coverPaper;
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

package model;

public class BoardVO {

	private int num;
	private String writer;
	private String title;
	private String fileName;
	private String content;
	private String day;	
	
	public BoardVO(String writer, String title, String fileName, String content) {
		this.writer = writer;
		this.title = title;
		this.fileName = fileName;
		this.content = content;
	}
	
	public BoardVO(int num, String writer, String title, String fileName, String content, String day) {
		this.num = num;
		this.writer = writer;
		this.title = title;
		this.fileName = fileName;
		this.content = content;
		this.day = day;
	}

	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	
	
	
}

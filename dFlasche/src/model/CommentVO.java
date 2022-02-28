package model;

public class CommentVO {
	
	private int num1;
	private int num2;
	private String comment;
	private String m_id;
	private String day;
	
	public CommentVO(int num1, int num2, String comment, String m_id, String day) {
		
		this.num1 = num1;
		this.num2 = num2;
		this.comment = comment;
		this.m_id = m_id;
		this.day = day;
	}

	public int getNum1() {
		return num1;
	}

	public void setNum1(int num1) {
		this.num1 = num1;
	}

	public int getNum2() {
		return num2;
	}

	public void setNum2(int num2) {
		this.num2 = num2;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}
	
	
}

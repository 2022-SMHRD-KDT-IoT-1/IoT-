package model;

public class PerfumeVO {
	private String up_seq;
	private String up_title;
	private String up_content;
	private String up_date;
	private String m_id;
	private String up_file;
	
	public PerfumeVO(String up_title, String up_content, String up_file) {
		this.up_title = up_title;
		this.up_content = up_content;
		this.up_file = up_file;
	}

	public String getUp_seq() {
		return up_seq;
	}

	public void setUp_seq(String up_seq) {
		this.up_seq = up_seq;
	}

	public String getUp_title() {
		return up_title;
	}

	public void setUp_title(String up_title) {
		this.up_title = up_title;
	}

	public String getUp_content() {
		return up_content;
	}

	public void setUp_content(String up_content) {
		this.up_content = up_content;
	}

	public String getUp_date() {
		return up_date;
	}

	public void setUp_date(String up_date) {
		this.up_date = up_date;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getUp_file() {
		return up_file;
	}

	public void setUp_file(String up_file) {
		this.up_file = up_file;
	}
	
	
	
}

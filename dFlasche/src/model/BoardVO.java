package model;

public class BoardVO {
	
	private int article_seq;
	private String article_subject;
	private String article_content;
	private String article_date;
	private String article_file1;
	private String article_file2;
	private String article_cnt;
	private String m_id;
	
	public BoardVO(String article_subject, String article_content,
			String article_file1, String article_file2, String m_id) {
		this.article_subject = article_subject;
		this.article_content = article_content;
		this.article_file1 = article_file1;
		this.article_file2 = article_file2;
		this.m_id = m_id;
	}
	
	public BoardVO(int article_seq, String article_subject, String article_content, String article_date,
			String article_file1, String article_file2, String article_cnt, String m_id) {
		this.article_seq = article_seq;
		this.article_subject = article_subject;
		this.article_content = article_content;
		this.article_date = article_date;
		this.article_file1 = article_file1;
		this.article_file2 = article_file2;
		this.article_cnt = article_cnt;
		this.m_id = m_id;
	}

	public int getArticle_seq() {
		return article_seq;
	}

	public void setArticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}

	public String getArticle_subject() {
		return article_subject;
	}

	public void setArticle_subject(String article_subject) {
		this.article_subject = article_subject;
	}

	public String getArticle_content() {
		return article_content;
	}

	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}

	public String getArticle_date() {
		return article_date;
	}

	public void setArticle_date(String article_date) {
		this.article_date = article_date;
	}

	public String getArticle_file1() {
		return article_file1;
	}

	public void setArticle_file1(String article_file1) {
		this.article_file1 = article_file1;
	}

	public String getArticle_file2() {
		return article_file2;
	}

	public void setArticle_file2(String article_file2) {
		this.article_file2 = article_file2;
	}

	public String getArticle_cnt() {
		return article_cnt;
	}

	public void setArticle_cnt(String article_cnt) {
		this.article_cnt = article_cnt;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	
	
	
	
	
}

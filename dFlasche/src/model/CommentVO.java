package model;

public class CommentVO {
	
	private int comm_seq;
	private int article_seq;
	private String comm_content;
	private String comm_date;
	private String m_id;
	
	public CommentVO(int comm_seq, int article_seq, String comm_content, String comm_date, String m_id) {
		
		this.comm_seq = comm_seq;
		this.article_seq = article_seq;
		this.comm_content = comm_content;
		this.comm_date = comm_date;
		this.m_id = m_id;
	}
	

	public  CommentVO( String m_id, String comm_content) {
		
		this.m_id = m_id;
		this.comm_content = comm_content;
		
	}

	public int getcomm_seq() {
		return comm_seq;
	}

	public void setcomm_seq(int comm_seq) {
		this.comm_seq = comm_seq;
	}

	public int getarticle_seq() {
		return article_seq;
	}

	public void setarticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}

	public String getcomm_content() {
		return comm_content;
	}

	public void setcomm_content(String comm_content) {
		this.comm_content = comm_content;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getcomm_date() {
		return comm_date;
	}

	public void setcomm_date(String comm_date) {
		this.comm_date = comm_date;
	}
	
	
}

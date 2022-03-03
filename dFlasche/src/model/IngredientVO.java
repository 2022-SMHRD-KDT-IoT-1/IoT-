package model;

public class IngredientVO {
	
	private int p_seq;           
    private String p_name;          
    private String p_type;     
    private String p_file;         
    private String p_specialty;    
    private String p_date; 
    private String m_id;
    
   
	public IngredientVO(String p_type, String p_name, String p_specialty, String p_file, String m_id) {
	
		this.p_type = p_type;
		this.p_name = p_name;
		this.p_specialty = p_specialty;
		this.p_file = p_file;
		this.m_id = m_id;
	}


	public IngredientVO(int p_seq, String p_type, String p_name, String p_specialty, String p_file, String p_date,
			String m_id) {

		this.p_seq = p_seq;
		this.p_type = p_type;
		this.p_name = p_name;
		this.p_specialty = p_specialty;
		this.p_file = p_file;
		this.p_date = p_date;
		this.m_id = m_id;
	}


	public int getP_seq() {
		return p_seq;
	}


	public void setP_seq(int p_seq) {
		this.p_seq = p_seq;
	}


	public String getP_type() {
		return p_type;
	}


	public void setP_type(String p_type) {
		this.p_type = p_type;
	}


	public String getP_name() {
		return p_name;
	}


	public void setP_name(String p_name) {
		this.p_name = p_name;
	}


	public String getP_specialty() {
		return p_specialty;
	}


	public void setP_specialty(String p_specialty) {
		this.p_specialty = p_specialty;
	}


	public String getP_file() {
		return p_file;
	}


	public void setP_file(String p_file) {
		this.p_file = p_file;
	}


	public String getP_date() {
		return p_date;
	}


	public void setP_date(String p_date) {
		this.p_date = p_date;
	}


	public String getM_id() {
		return m_id;
	}


	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
    
  
}

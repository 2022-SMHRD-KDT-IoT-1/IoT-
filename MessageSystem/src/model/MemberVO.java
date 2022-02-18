package model;

public class MemberVO {
	
	// ���̺��� �÷���� �ʵ��� �������� ��ġ������ ��
	
	private String email;
	private String pw;
	private String tel;
	private String address;

	public MemberVO(String email, String pw, String tel, String address) {
		this.email = email;
		this.pw = pw;
		this.tel = tel;
		this.address = address;
	}

	// �����ε�
	public MemberVO(String email, String pw) {
		this.email = email;
		this.pw = pw;
	}
	
	
	public MemberVO(String pw, String tel, String address) {
		this.pw = pw;
		this.tel = tel;
		this.address = address;
	}

	public MemberVO(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
package model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// ctrl+shift+o --> import
// jdbc --> MyBatis(�����ӿ�ũ)
public class MemberDAO {

	// ������ dao������ ��� �޼��忡�� connection ���� -> psmt ����
	// sqlSessionFactory : connection�� �̸� ������ - > ����� �� �������⸸
	private static SqlSessionFactory sqlSessionFactory;

	// �ʱ�ȭ �� --> �⺻������ �����ڰ� ����Ǳ� ���� ����
	// static �ʱ�ȭ �� --> static �������� �޸𸮿� �ö� ���� ����
	static {

		try {
			String resource = "mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);					
		} catch (Exception e) {
			//e.getMessage();
			//e.toString();
			//e.printStackTrace();
		}
	}

	// =================================================================================

	public int join(MemberVO vo) {

		// 1. SQLSession �����
		// �Ű������� boolean -> autocommit�� �������
		SqlSession session = sqlSessionFactory.openSession(true);

		// insert, delete, update�� �޼ҵ� �̸��� �Ȱ���
		// insert("id��", �Ű�����)
		// mapper.xml���� resultType(��ȯŸ��)�� �������� �ʾƵ� �ڵ����� int�� ����
		// select���� ��� : 1�� --> selectOne("id", �Ű�����), selectList("id��", �Ű�����)
		int cnt = session.insert("joinService", vo);

		// Ŀ��
		// session.commit();

		// ���� �ݱ�
		session.close();		
		return cnt;

	}
	// === join ===

	public MemberVO login(MemberVO vo) {

		// 1. sqlSession �����
		SqlSession session = sqlSessionFactory.openSession();		
		// 2. mapper�� �����ص� sql�� ���
		MemberVO uvo = session.selectOne("loginService", vo);		
		// 3. session �ݱ�
		session.close();

		return uvo;
	}
	//	=== login ===

	public int update(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("updateService", vo);
		session.close();
		return cnt;
	}



	public int delete(String email) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.delete("deleteService", email);
		session.close();

		return cnt;

	}

	public MemberVO emailCheck(String email) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO vo = session.selectOne("emailCheck", email);
		session.close();
		
		return vo;
		
	}
}
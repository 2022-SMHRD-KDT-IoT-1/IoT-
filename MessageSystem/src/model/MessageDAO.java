package model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MessageDAO {

	private static SqlSessionFactory sqlSessionFactory;

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


	// =============================================================================================

	public int messageSend(MessageVO mvo) {

		// ���� ��������
		SqlSession session = sqlSessionFactory.openSession(true);

		// sql�� ����
		int cnt = session.insert("messageSend", mvo);

		// ���� �ݱ�
		session.close();

		return cnt;
	}

	// List<E>�� ArrayList�� ���� Ŭ����
	// ������ü�� ����Ѵ� -> ������ �� ���������� ����ϱ� ����
	// ex) session > Object(�ֻ��� Ŭ����) ��� > ��� ������Ÿ�� ���� ����
	public List<MessageVO> selectMessage(String email){

		SqlSession session = sqlSessionFactory.openSession();
		
		List<MessageVO> list = session.selectList("selectMessage", email);

		session.close();
		
		return list;
	}

}

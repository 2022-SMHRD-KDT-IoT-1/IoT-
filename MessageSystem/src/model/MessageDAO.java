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

		// 세션 빌려오기
		SqlSession session = sqlSessionFactory.openSession(true);

		// sql문 실행
		int cnt = session.insert("messageSend", mvo);

		// 세션 닫기
		session.close();

		return cnt;
	}

	// List<E>는 ArrayList의 상위 클래스
	// 상위객체를 사용한다 -> 변수를 더 포괄적으로 사용하기 위함
	// ex) session > Object(최상위 클래스) 사용 > 모든 데이터타입 저장 가능
	public List<MessageVO> selectMessage(String email){

		SqlSession session = sqlSessionFactory.openSession();
		
		List<MessageVO> list = session.selectList("selectMessage", email);

		session.close();
		
		return list;
	}

}

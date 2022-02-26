package model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.MemberVO;

public class MemberDAO {

	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		
		try {
			String resource = "mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			
		}
	}
	
	// ==========================================================================
	
	public int join(MemberVO vo) {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("JoinService", vo);
		session.close();
		return cnt;
	}

	public MemberVO login(MemberVO vo) {
		
			
			SqlSession session = sqlSessionFactory.openSession();
			MemberVO uvo = session.selectOne("LoginService", vo);
			session.close();
			return uvo;
	}

	public int nickup(MemberVO vo) {
			
			// SQL연결을 빌려오는 부분
			SqlSession session = sqlSessionFactory.openSession(true);
			System.out.println(vo.getM_nick());
			int cnt = session.update("NickUp", vo);
			session.close();
			return cnt;
		}

	public int delete(String m_id) {

		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("DeleteService", m_id);
		session.close();
		return cnt;
	}

	}


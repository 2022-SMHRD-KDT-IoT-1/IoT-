package model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class PerfumeDAO {

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
	
	public int write(PerfumeVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("writePerfume", vo);
		session.close();
		return cnt;
	}


	public List<PerfumeVO> selectMine() {
		SqlSession session = sqlSessionFactory.openSession();
		List<PerfumeVO> list = session.selectList("myPerfumes");
		session.close();
		return list;
	}
	
}

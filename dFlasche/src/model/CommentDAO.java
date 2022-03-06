package model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CommentDAO {

	private static SqlSessionFactory sqlSessionFactory;

	static {

		try {
			String resource = "mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ==========================================================================

	public int writeContent(CommentVO vo) {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("commentService", vo);
		session.close();
		return cnt;
	}

	public List<CommentVO> selectComment() {
		
		SqlSession session = sqlSessionFactory.openSession(); 
		List<CommentVO> list = session.selectList("viewComment");
		session.close(); 
		return list;
		
	}

	
}

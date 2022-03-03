package model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class IngredientDAO {
	
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

	public int writeIngredient(IngredientVO vo) {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("IngredientWrite", vo);
		session.close();
		return cnt;
	}

	public List<IngredientVO> selectIngredient() {
		
		SqlSession session = sqlSessionFactory.openSession();
		List<IngredientVO> list = session.selectList("selectIngredient");
		session.close();
		return list;
	}

	public IngredientVO viewIngredient(int num) {
		
		SqlSession session = sqlSessionFactory.openSession();
		IngredientVO vo = session.selectOne("viewIngredient", num);		
		session.close();
		return vo;
	}

	public int deleteIngredient(int p_seq) {

		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.update("DeleteIngredient", p_seq);
		session.close();
		return cnt;
	}

	
	
	
	
}


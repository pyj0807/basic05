package beans;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisDao {
	SqlSessionFactory factory;

	// throws 그 메서드에서 발생하는 exception 처리 안하겠다.
	public MybatisDao() throws IOException {
		SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
		InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
		factory = builder.build(is);
	}
	
	public int addData(Map param) {
		SqlSession sql = factory.openSession();
		try {
			
			int r = sql.insert("ac.addData", param);
			if(r==1) 
				sql.commit();
			
			return r;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
		
	}
	
}

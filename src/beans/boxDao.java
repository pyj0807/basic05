package beans;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class boxDao {
	
	SqlSessionFactory factory;
	
	public boxDao() throws IOException {
		SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
		InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
		factory = builder.build(is);
	}
	
	public List<Map> findStartWith(String w) {
		SqlSession sql =factory.openSession();	
		try {
			List<Map> p = sql.selectList("account.findStartWith",  w+"%");
			return p;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	/*
	public List<Map> findStartWith2(String w) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@www.mockingu.com:1521:xe", "dev",
					"oracle");

			String sql = "select * from account where id like ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, w + "%");
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				List<Map> li = new ArrayList<>();
				do {
					Map e = new LinkedHashMap<>();
					e.put("id", rs.getString("id"));
					e.put("name", rs.getString("name"));
					e.put("gender", rs.getString("gender"));
					li.add(e);
				}while(rs.next());
				return li;
			}else {
				return new ArrayList<>();
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	 */
}

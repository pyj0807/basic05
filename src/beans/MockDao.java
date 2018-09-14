package beans;

import java.util.ArrayList;
import java.util.List;

public class MockDao {
	List<String> ids;
	
	public MockDao() {
		ids = new ArrayList<>();
		ids.add("luffy");
		ids.add("zoro");
		ids.add("nami");
		ids.add("saan");
		ids.add("mock");
		ids.add("admin");
		ids.add("sanji");
	}
	
	public boolean exist(String target) {
		if(ids.contains(target))
			return true;
		else
			return false;
	}
	
}

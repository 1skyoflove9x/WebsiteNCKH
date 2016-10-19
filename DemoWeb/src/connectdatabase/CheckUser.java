package connectdatabase;

import java.util.HashMap;
import java.util.Map;

public class CheckUser {
	static Map<String, User> USERS = new HashMap<String,User>();
	static 
	{
		USERS.put("admin",new User("admin","0123456","admin"));
		USERS.put("giangvien",new User("giangvien","0123456","giaovien"));
		USERS.put("nhanvienql",new User("nhanvienql","0123456","nhanvienql"));
		USERS.put("lanhdao",new User("lanhdao","0123456","lanhdao"));
		USERS.put("sinhvien",new User("sinhvien","0123456","sinhvien"));
		USERS.put("14110425",new User("14110425","14110425","sinhvien"));
		USERS.put("14110347",new User("14110347","14110347","sinhvien"));
		USERS.put("14110387",new User("14110387","14110387","sinhvien"));
	}
	public static User getUser (String username)
	{
		return USERS.get(username);
	}
}

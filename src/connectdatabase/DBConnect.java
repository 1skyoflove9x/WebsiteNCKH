package connectdatabase;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;

	public class DBConnect {
		public static boolean ConnDB(String Username, String Password)
		{
			try {
	            Class.forName("com.mysql.jdbc.Driver");
	         } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	         }
			Connection cnn = null;
			Statement stm = null;
			ResultSet rs=null;
			boolean tmp= false;
			
			try
			{
				 cnn = DriverManager.getConnection(
				            "jdbc:mysql://localhost:3306/detainckh", "root", "0123");
				 stm = cnn.createStatement();
				 rs= stm.executeQuery("SELECT username,password FROM users WHERE username='"
				 +Username+"' AND password='"+Password+"'");
				 tmp=rs.next();
			
			}catch(SQLException e)
			{
				 e.printStackTrace();
			}
			return tmp;
		}

		
}

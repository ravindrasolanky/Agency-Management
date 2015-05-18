import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;


public class DBinfo 
{

	static
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		} 
		catch (ClassNotFoundException e)
		{
			
		e.printStackTrace();
		}
		
	}
	public static Connection getConn()
	{
	Connection con=null;	
	try
	{
		con= DriverManager.getConnection("jdbc:mysql://localhost:3306/gpower", "root", "budget");
		
		
	}
	catch(SQLException e)
	{
		e.printStackTrace();
		
	}
	return con;
		
	}
}

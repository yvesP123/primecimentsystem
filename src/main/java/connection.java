
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class connection 
{
	
	public static boolean Manager(String username,String password) 
	{
		boolean s=false;
		  try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/prime","root","password");
			PreparedStatement ps;
			ps=conn.prepareStatement("select  * from admin where username=? AND password=?");
			ps.setString(1, username);
			
			ps.setString(2,password);
			
			
			ResultSet rs=ps.executeQuery();
			s=rs.next();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
		
	}
	public static boolean accountant(String username,String password) 
	{
		boolean r=false;
		  try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/prime","root","password");
				PreparedStatement ps1;
				ps1=conn.prepareStatement("select  * from accountant where username=?  AND password=?");
				ps1.setString(1, username);
				
				ps1.setString(2,password);
				
				
				ResultSet rs1=ps1.executeQuery();
				r=rs1.next();
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return r;
	}
	

}
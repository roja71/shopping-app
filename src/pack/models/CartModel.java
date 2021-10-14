package pack.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class CartModel 
{
	public Connection getConnection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cartapp","root","");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}

	public Cart_POJO verify(Cart_POJO obj)
	{
		Connection con=getConnection();
		PreparedStatement ps=null;
		try
		{
			ps=con.prepareStatement("select * from admin_info where username=? and password=?");
			ps.setString(1,obj.getUsername());
			ps.setString(2, obj.getPassword());
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				return obj;
			}
			else 
			{
				return null;
			}
			
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return null;
		
	}
}

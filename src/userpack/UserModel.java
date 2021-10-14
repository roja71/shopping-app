package userpack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserModel 
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
	public boolean Insert(User u) 
	{
		Connection con=getConnection();
		PreparedStatement ps=null;
		try
		{
			ps=con.prepareStatement("insert into user_info values(?,?,?,?,?)");
			ps.setString(1,u.getFname());
			ps.setString(2, u.getUsername());
			ps.setString(3,u.getEmail());
			ps.setString(4,u.getMobno());
			ps.setNString(5, u.getPass());
			 int x=ps.executeUpdate();
			 if(x>0)
			 {
				 return true;
			 }
			 else
			 {
				 return false;
			 }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

	public User validate(User ob)
	{
		User usr=null;
		Connection con=getConnection();
		PreparedStatement ps=null;
		try
		{
			ps=con.prepareStatement("select * from user_info where uname=? and pass=?");
			ps.setString(1, ob.getUsername());
			ps.setString(2, ob.getPass());
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				usr=new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return usr;
	}
	
}

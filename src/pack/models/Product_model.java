package pack.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Product_model 
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
	

	public List<Product> getAllProducts()
	{
		Connection con=getConnection();
		PreparedStatement ps=null;
		List<Product> all=new ArrayList<>();
		try
		{
			ps=con.prepareStatement("select * from product_info");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Product product=new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getNString(7),rs.getString(8));
				all.add(product);
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return all;
	}

	
	
	public boolean insertdata(Product ob)
	{
		Connection con=getConnection();
		PreparedStatement ps=null;
		try
		{
			System.out.println(ob.getCategory());
			ps=con.prepareStatement("insert into product_info(pname,category,price,quantity,description,longdesc,image) values (?,?,?,?,?,?,?)");
			ps.setString(1, ob.getProductname());
			ps.setString(2, ob.getCategory());
			ps.setString(3, ob.getProductprice());
			ps.setString(4, ob.getQuantity());
			ps.setString(5, ob.getPdesc());
			ps.setString(6, ob.getPldesc());
			ps.setString(7, ob.getImagepath());
			int x=ps.executeUpdate();
			if(x>0)
			{
				return true;
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean deletedata(int id)
	{
		Connection con=getConnection();
		PreparedStatement ps=null;
		try
		{
			ps=con.prepareStatement("delete from product_info where pid=?");
			ps.setInt(1,id);
			int x=ps.executeUpdate();
			if(x>0)
				return true;
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return false;
		
	}
	
	public boolean updatedata(Product ob)
	{
		Connection con=getConnection();
		PreparedStatement ps=null;
		try
		{
			ps=con.prepareStatement("update product_info set pname=?,category=?,price=?,quantity=?,description=?,longdesc=?,image=? where pid=?");
			ps.setString(1,ob.getProductname());
			ps.setString(2,ob.getCategory());
			ps.setString(3, ob.getProductprice());
			ps.setString(4, ob.getQuantity());
			ps.setString(5, ob.getPdesc());
			ps.setString(6, ob.getPldesc());
			ps.setString(7, ob.getImagepath());
			ps.setInt(8, ob.getProductid());
			int x=ps.executeUpdate();
			if(x>0)
			{
				return true;
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public Product getproduct(int id)
	{
		Connection con=getConnection();
		PreparedStatement ps=null;
		Product obj=null;
		try
		{
			ps=con.prepareStatement("select * from product_info where pid=?");
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				 obj=new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getNString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
				
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return obj;
	
	}
}

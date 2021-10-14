package pack.models;

public class Cart_POJO
{
	private String username;
	private String password;
	private String fullname;
	private String phone;
	


	public Cart_POJO(String username, String password)//, String phone)
	{
		
		this.username = username;
		this.password = password;
		//this.fullname = fullname;
		//this.phone = phone;
	}
	
	/*public Cart_POJO(String fullname) 
	{
		
		this.fullname = fullname;
	}*/

	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public String getPassword() 
	{
		return password;
	}
	public void setPassword(String password) 
	{
		this.password = password;
	}

	public String getFullname()
	{
		return "roja";
	}

	public void setFullname(String fullname) 
	{
		this.fullname = fullname;
	}

	public String getPhone()
	{
		return phone;
	}

	public void setPhone(String phone) 
	{
		this.phone = phone;
	}
	
	
	
	
	

}

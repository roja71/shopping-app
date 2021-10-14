package userpack;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/registeraccount")
public class RegisterAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String fname=request.getParameter("fname");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String mobno=request.getParameter("mobno");
		String pass=request.getParameter("password");
		
		User u=new User(fname,username,email,mobno,pass);
		boolean b=new UserModel().Insert(u);
		if(b==true)
		{
			response.sendRedirect("Login.jsp?msg=you're succesfully registered! Please login now.");
		}
		else
		{
			response.sendRedirect("Register.jsp?msg= You already have an Account. Try Logging Again.");
		}
	}

}

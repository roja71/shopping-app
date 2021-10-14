package userpack;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String uname=request.getParameter("name");
		String pass=request.getParameter("password");
				
		User user=new User(uname,pass);
		user=new UserModel().validate(user);
		if(user==null)
		{
			response.sendRedirect("Login.jsp?msg=Please try again");
		}
		else
		{
			HttpSession hs=request.getSession();
			hs.setAttribute("userinfo", user);
			response.sendRedirect("index.jsp");
		}
	}

}

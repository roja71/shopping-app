package pack.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pack.models.Product_model;


@WebServlet("/admin/delete")
public class Deletedata extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		int deleteid=Integer.parseInt(request.getParameter("deleteid"));
		Product_model pm=new Product_model();
		boolean v=pm.deletedata(deleteid);
		if(v)
			response.sendRedirect("dashboard.jsp");
		else
		{
			response.sendRedirect("deletepreview.jsp");
		}
		
	}

}

package carts;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/RemoveProduct")
public class RemoveProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int index=Integer.parseInt(request.getParameter("index"));
		HttpSession session=request.getSession();
		ArrayList<HashMap<String, String>> cp= (ArrayList<HashMap<String, String>>)session.getAttribute("cart_info");
		if(cp.size()==1)
		{
			cp.clear();
			cp=null;
		}
		else
			cp.remove(index);
		
		double sum=0;
    	String all_pnames="";
		for(int i=0;i<cp.size();i++)
		{
			sum=sum+Double.parseDouble(cp.get(i).get("subtotal"));
    		all_pnames+="_"+cp.get(i).get("pname");
		}
		session.setAttribute("gross_amount", String.valueOf(sum));
    	session.setAttribute("all_pnames", all_pnames);
    	
    	
		session.setAttribute("cart_info", cp);
		response.sendRedirect("cart_display.jsp");
	}

}

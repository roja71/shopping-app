package pack.controllers;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import pack.models.Product;
import pack.models.Product_model;


@WebServlet("/admin/update")
public class Updatedata extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String upload_directory="product_images";
		String imagepath="";
		int pid=0;
		String pname="";
		String price="";
		String pqty="";
		String pdesc="";
		String category="";
		String pldesc="";
		if(ServletFileUpload.isMultipartContent(request))
		{
			try 
			{
				List<FileItem> multi=new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				
				for(FileItem item:multi)
				{
					if(!item.isFormField() && item.getSize()!=0)
					{
					String fname=new File(item.getName()).getName();
					imagepath=upload_directory+File.separator+fname;
					
					item.write(new File("C:\\Users\\T ROJA\\Desktop\\projects_jee\\CartApp\\WebContent\\admin\\"+imagepath));
					}
					else if(!item.isFormField() && item.getSize()==0)
					{
						imagepath=multi.get(8).getString();						
					}
				}
				
				pid=Integer.parseInt(multi.get(0).getString());
				pname=multi.get(1).getString();
				category=multi.get(3).getString();
				pdesc=multi.get(4).getString();
				pldesc=multi.get(5).getString();
				price=multi.get(6).getString();
				pqty=multi.get(7).getString();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		Product_model pm=new Product_model();

		Product k=new Product(pid,pname,category,price, pqty, pdesc,pldesc, imagepath);
		boolean v=pm.updatedata(k);
		if(v)
		{
			response.sendRedirect("dashboard.jsp");
		}
		else
		{
			response.sendRedirect("dashboard.jsp");
		}
			
		}
	}
}



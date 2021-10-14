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


@WebServlet("/admin/InsertRecord")
public class Insert_Data extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String upload_directory="product_images";
		String imagepath="";
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
				System.out.println(multi);
				for(FileItem item:multi)
				{
					if(!item.isFormField())
					{
						String fname=new File(item.getName()).getName();
						imagepath=upload_directory+File.separator+fname;
						
						item.write(new File("C:\\Users\\T ROJA\\Desktop\\projects_jee\\CartApp\\WebContent\\admin\\"+imagepath));
					}
				}
			
				pname=multi.get(0).getString();
				category=multi.get(2).getString();
				price=multi.get(5).getString();
				pqty=multi.get(6).getString();
				pdesc=multi.get(3).getString();
				pldesc=multi.get(4).getString();
				System.out.println(pldesc);
		
		Product p=new Product(pname, category, price, pqty, pdesc,pldesc,imagepath);
		Product_model pm=new Product_model();
		boolean v=pm.insertdata(p);
		if(v)
		{
			response.sendRedirect("dashboard.jsp");
		}
		else
		{
			response.sendRedirect("dashboard.jsp");
		}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}


		}
	}
}

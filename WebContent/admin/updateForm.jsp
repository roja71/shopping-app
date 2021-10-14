<%@page import="pack.models.Product"%>
<%@page import="pack.models.Product_model"%>
<%@page import="pack.models.Cart_POJO"%>
<%
	Cart_POJO k=(Cart_POJO)session.getAttribute("admin");
	if(k==null)
	{
		response.sendRedirect("index.jsp?message=please login again.");
	}
	else
	{
%>

<jsp:include page="Header.jsp"/>

        <div class="dashboard-wrapper">
            <div class="container-fluid dashboard-content">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <h3 class="text-center">Welcome!</h3>
                       <%
                       		int updateid=Integer.parseInt(request.getParameter("updateid"));
               				Product_model pm=new Product_model();
               				Product pro=pm.getproduct(updateid);
                       
                       %>
                        <form action="update" method="post" enctype="multipart/form-data">
                        product id: <input type="hidden" name="pid" value="<%= updateid %>">
                        	<div class="form-control">
                        		Product Name: <input type="text" class="form-control" name="pname" value="<%=pro.getProductname()%>"><br><br>
                        	</div>
                        	
    						<div class="form-control">
    							Product image: <img src="<%= pro.getImagepath() %>" height="50" width="50"><input type="file" class="form-control" name="ipath"><br><br>
                        	</div>
                        	
                        	<div class="form-control">
                        		Product Category: <input type="text" class="form-control" name="pcat" value="<%=pro.getCategory()%>"><br><br>
                        	</div>
                        	<div class="form-control">
                        		product description:
                        			<textarea class="form-control" name="pdesc" ><%= pro.getPdesc()%></textarea>
                        	</div>
                        	<div class="form-control">
                        		product long description:
                        			<textarea class="form-control" name="pldesc" ><%= pro.getPldesc()%></textarea>
                        	</div>
                        	<div class="form-control">
                        		Product Price: <input type="text" class="form-control" name="price" value="<%= pro.getProductprice()%>"><br><br>
                        	</div>
                        	<div class="form-control">
                        		quantity: <input type="text" class="form-control" name="pqty" value="<%= pro.getQuantity()%>"> 
                        	</div>
                        	<input type="hidden" value="<%=pro.getImagepath()%>" name="prev_img">
                        		<button  type="submit" class="btn btn-danger form-control" >Update Record</button>
                        </form>
                        
                       
                    </div>
                </div>
            </div>
        </div>

<jsp:include page="Footer.jsp"/>

<%
	}
%>
>
<%@page import="pack.models.Product"%>
<%@page import="java.util.List"%>
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

<!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid dashboard-content">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <h3 class="text-center">Welcome!</h3>
                        
                        <table cellspacing="10" cellpdding="10" border"2" class="table">
                        	<tr>
                        		<td>product id</td>
                        		<td>product image</td>
                        		<td>Product Name</td>
                        		<td>Product category</td>
                        		<td>price</td>
                        		<td>quantity</td>
                        		
                        	</tr>
                        	<% Product_model pm=new Product_model();
                        		List<Product> lst=pm.getAllProducts();
                        		for(Product item:lst)
                        		{
                        	
                        	%>
                        	<tr>
                        		<td><%= item.getProductid() %></td>
                        		<td><img src="<%= item.getImagepath() %>" height="50" width="50"></td>
                        		<td><%= item.getProductname() %></td>
                        		<td><%= item.getCategory() %></td>
                        		<td><%= item.getProductprice() %></td>
                        		<td><%= item.getQuantity() %>
                        		
                        	</tr>
                        	
                        	<%
                        		}
                        	%>
                        </table>
                       
                    </div>
                </div>
            </div>
        </div>

<jsp:include page="Footer.jsp"/>

<%
	}
%>

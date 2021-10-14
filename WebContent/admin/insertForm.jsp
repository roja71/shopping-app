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
                       
                        <form action="InsertRecord" method="post" enctype="multipart/form-data">
                        	<div class="form-control">
                        		Product Name: <input type="text" class="form-control" name="pname"><br><br>
                        	</div>
                        	
                        	<div class="form-control">
                        		Product image: <input type="file" class="form-control" name="ipath"><br><br>
                        	</div>
                        	<div class="form-control">
                        		Product Category: <input type="text" class="form-control" name="pcat"><br><br>
                        	</div>
                        	<div class="form-control">
                        		product description:
                        			<textarea class="form-control" name="pdesc"></textarea>
                        	</div>
                        	<div class="form-control">
                        		product long description:
                        			<textarea class="form-control" name="pldesc"></textarea>
                        	</div>
                        	<div class="form-control">
                        		Product Price: <input type="text" class="form-control" name="price"><br><br>
                        	</div>
                        	<div class="form-control">
                        		quantity: <input type="text" class="form-control" name="pqty"><br><br>
                        	</div>
                        		<button  type="submit" class="btn btn-success form-control" >Insert Record</button>
                        </form>
                        
                       
                    </div>
                </div>
            </div>
        </div>

<jsp:include page="Footer.jsp"/>

<%
	}
%>

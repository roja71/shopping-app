<%@page import="java.util.ArrayList"%>
<%@page import="pack.models.Product_model"%>
<%@page import="pack.models.Product"%>
<%@page import="java.util.List"%>
<jsp:include page="UHeader.jsp"/>
<%
int pid=Integer.parseInt(request.getParameter("pid"));
Product_model pm=new Product_model();
Product k=pm.getproduct(pid);
%>
<div class="container">
	<div class="row">
		<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
			<div class="well">
				<div class="popular-img">
	                   <img src="admin/<%= k.getImagepath() %>" height="350" width="350" class="img-responsive"> 
	                 </div>
			</div>
		</div>
		<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
			<div class="well" style="margin-left:30px;">
	             
	                    <h2><%= k.getProductname() %></h2>
	             	<h3>
	              		<span><%= k.getPdesc() %></span>
	              	</h3>
	              	<h4><%= k.getPldesc() %></h4>
	          </div>
			</div>
			<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
			<div class="well">
				<div class="card ">  
					       <div class="card-body" >
					          <form action="cartadd" method="post">
					          <input type="hidden" value="<%= k.getProductid() %>" name="spid">
					          	<table>
					          		<tr>
					          			<td>Quantity:</td>
					          			<td>
					          			<select class="form-control" name="uqty">
								          	<option>1</option>
								          	<option>2</option>
								          	<option>3</option>
								          	<option>4</option>
					          		   </select>
					          		</td>
					          		</tr>
					          	
					          		<tr><td><button class="btn btn-dark">Add to cart</button></td></tr>
					          		
					          		<tr><td><button class="btn btn-dark" >Buy Now</button></td></tr>					          		 					          							          		
					          	</table>
					          </form>
					       </div>
     				</div>	   
			</div>
		</div>
		</div>
	</div>



<jsp:include page="UFooter.jsp"/>

<%@page import="pack.models.Product_model"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pack.models.Product"%>
<%@page import="java.util.List"%>
<jsp:include page="UHeader.jsp"/>

<!-- Nav Card -->
                <div class="tab-content" id="nav-tabContent">
                    <!-- card one -->
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                        <div class="row">
                        <% 

									List<Product> plst=new ArrayList<Product>();
									plst=new Product_model().getAllProducts();
									for(Product p:plst)
									{
						%>
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                                <div class="single-popular-items mb-50 text-center">
                                	<div class="popular-caption">
                                        <h3><%= p.getProductname()%></h3>
                                        <span>&#8377;<%= p.getProductprice() %>/-</span>
                                    </div>
                                    <div class="popular-img">
                                        <img src="admin/<%= p.getImagepath() %>" alt="" class="img-responsive" style="height:250px; width:250px; margin:10px;">
                                        <div class="img-cap">
                                            <a href="ProductDetails.jsp?pid=<%= p.getProductid()%>" class="btn btn-dark">view details</a>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
<%
}
%>  
                        </div>
                   </div> 
                 </div>
                  
<jsp:include page="UFooter.jsp"/>
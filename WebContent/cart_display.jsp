<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<jsp:include page="UHeader.jsp"/>

<style>
.center-screen {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  min-height: 50vh;
}
</style>
<%
ArrayList<HashMap<String, String>> cp=(ArrayList<HashMap<String, String>>)session.getAttribute("cart_info");
if(cp==null)
{
%>

<div class="center-screen">
<h1>cart is empty</h1>
<a href="index.jsp" class="btn_1">SHOP NOW</a>
</div>


<% 
}
else
{
	

%>


      <!--================Cart Area =================-->
      <section class="cart_area section_padding" style="margin-top: -200px">
        <div class="container">
          <div class="cart_inner">
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col" style="font-size: 20px; font-weight: bolder; color: black">Product</th>
                    <th scope="col" style="font-size: 20px; font-weight: bolder; color: black">Price</th>
                    <th scope="col" style="font-size: 20px; font-weight: bolder; color: black">Quantity</th>
                    <th scope="col" style="font-size: 20px; font-weight: bolder; color: black">Total</th>
                  </tr>
                </thead>
                <tbody>
                
                <%
                	double sum=0;
                	for(int i=0;i<cp.size();i++)
                	{
                		sum=sum+Double.parseDouble(cp.get(i).get("subtotal"));
                		
                %>
                  <tr>
                    <td>
                      <div class="media">
                        <div class="d-flex">
                          <img src="admin\<%= cp.get(i).get("pimg") %>" alt="<%= cp.get(i).get("pimg") %>" />
                        </div>
                        <div class="media-body">
                          <p><%= cp.get(i).get("pname") %></p>
                        </div>
                      </div>
                    </td>
                    <td>
                      <h5>&#8377;<%= cp.get(i).get("price") %></h5>
                    </td>
                    <td>
                      <div class="product_count">
                        <p style="border:2px solid black; padding:10px;" ><%= cp.get(i).get("qty") %></p>
                      </div>
                    </td>
                    <td>
                      <h5>&#8377;<%= cp.get(i).get("subtotal") %></h5>
                    </td>
                    
                    <td>
                    <a href="RemoveProduct?index=<%=i %>" class="btn">remove</a>
                    </td>
                  </tr>
                  
                  <%
                	}
                	
                  %>
                  
                  <tr class="bottom_button">
                    <td>
                      <a class="btn_1" href="#">Update Cart</a>
                    </td>
                    <td></td>
                    <td></td>
                    <td>
                      <div class="cupon_text float-right">
                        <a class="btn_1" href="#">Close Coupon</a>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                    <td>
                      <h5>Subtotal</h5>
                    </td>
                    <td>
                      <h5><span>&#8377;<%= sum %></span></h5>
                    </td>
                    <td></td>
                  </tr>
                  
                </tbody>
              </table>
              <div class="checkout_btn_inner float-right">
                <a class="btn_1" href="index.jsp">Continue Shopping</a>
                <a class="btn_1 checkout_btn_1" href="payuform.jsp">Proceed to checkout</a>
              </div>
            </div>
          </div>
          </div>
      </section>
      <%
     		 }
      %>
      
      <!--================End Cart Area =================-->

<jsp:include page="UFooter.jsp"/>
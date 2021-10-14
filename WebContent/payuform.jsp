<%@page import="userpack.User"%>
<%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>
<jsp:include page="UHeader.jsp"/>
<%!
public boolean empty(String s)
	{
		if(s== null || s.trim().equals(""))
			return true;
		else
			return false;
	}
%>
<%!
	public String hashCal(String type,String str){
		byte[] hashseq=str.getBytes();
		StringBuffer hexString = new StringBuffer();
		try{
		MessageDigest algorithm = MessageDigest.getInstance(type);
		algorithm.reset();
		algorithm.update(hashseq);
		byte messageDigest[] = algorithm.digest();
            
		

		for (int i=0;i<messageDigest.length;i++) {
			String hex=Integer.toHexString(0xFF & messageDigest[i]);
			if(hex.length()==1) hexString.append("0");
			hexString.append(hex);
		}
			
		}catch(NoSuchAlgorithmException nsae){ }
		
		return hexString.toString();


	}
%>
<% 	
	String merchant_key="JcZqs63j";
	String salt="729eLfJr0H";
	String action1 ="";
	String base_url="https://sandboxsecure.payu.in";
	int error=0;
	String hashString="";
	
	User u=(User)session.getAttribute("userinfo");
	if(u==null)
	{
		response.sendRedirect("Login.jsp?msg=Please Login first to proceed.&page=payuform.jsp");
		
	}
	else
	{
		
	

	
	Enumeration paramNames = request.getParameterNames();
	Map<String,String> params= new HashMap<String,String>();
    	while(paramNames.hasMoreElements()) 
	{
      		String paramName = (String)paramNames.nextElement();
      
      		String paramValue = request.getParameter(paramName);

		params.put(paramName,paramValue);
	}
	String txnid ="";
	if(empty(params.get("txnid"))){
		Random rand = new Random();
		String rndm = Integer.toString(rand.nextInt())+(System.currentTimeMillis() / 1000L);
		txnid=hashCal("SHA-256",rndm).substring(0,20);
	}
	else
		txnid=params.get("txnid");
        String udf2 = txnid;
	String txn="abcd";
	String hash="";
	String hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
	if(empty(params.get("hash")) && params.size()>0)
	{
		if( empty(params.get("key"))
			|| empty(params.get("txnid"))
			|| empty(params.get("amount"))
			|| empty(params.get("firstname"))
			|| empty(params.get("email"))
			|| empty(params.get("phone"))
			|| empty(params.get("productinfo"))
			|| empty(params.get("surl"))
			|| empty(params.get("furl"))
			|| empty(params.get("service_provider"))
	)
			
			error=1;
		else{
			String[] hashVarSeq=hashSequence.split("\\|");
			
			for(String part : hashVarSeq)
			{
				hashString= (empty(params.get(part)))?hashString.concat(""):hashString.concat(params.get(part));
				hashString=hashString.concat("|");
			}
			hashString=hashString.concat(salt);
			

			 hash=hashCal("SHA-512",hashString);
			action1=base_url.concat("/_payment");
		}
	}
	else if(!empty(params.get("hash")))
	{
		hash=params.get("hash");
		action1=base_url.concat("/_payment");
	}
		

%>


<script>
var hash='<%= hash %>';
function submitPayuForm() {
	
	if (hash == '')
		return;

      var payuForm = document.forms.payuForm;
      payuForm.submit();
    }
</script>
<html>
<body onload="submitPayuForm();">
 
 <form action="<%= action1 %>" method="post" name="payuForm">
 <input type="hidden" name="key" value="<%= merchant_key %>" />
      <input type="hidden" name="hash" value="<%= hash %>"/>
      <input type="hidden" name="txnid" value="<%= txnid %>" />
      <input type="hidden" name="udf2" value="<%= txnid %>" />
	  <input type="hidden" name="service_provider" value="payu_paisa" />
	  <input type="hidden" name="surl" value="http://localhost:8080/CartApp/OrderSuccess.jsp" size="64" />
	  <input type="hidden" name="furl" value="http://localhost:8080/CartApp/OrderFailure.jsp" size="64" />
 
 <div class="container">
 	<div class="row">
 		<div class="col-sm-6">
 			
 			<div class="form-group">
 				Name:<input name="firstname" id="firstname" value="<%= u.getFname() %>" class="form-control" />
 			</div>
 			
 			<div class="form-group">
 				Email: <input name="email" id="email" value="<%= u.getEmail() %>" class="form-control" />
 			</div>
 			<div class="form-group">
 				Phone: <input name="phone" value="<%= u.getMobno() %>" class="form-control" />
 			</div>
 			<div class="form-group">
 				Address Line 1:<input name="address1" required="required" value="<%= (empty(params.get("address1"))) ? "" : params.get("address1") %>" class="form-control" />
 			</div>
 			<div class="form-group">
 				Address Line 2:<input name="address2" value="<%= (empty(params.get("address2"))) ? "" : params.get("address2") %>" class="form-control"/>
 			</div>
 			<div class="form-group">
 				City:<input name="city" required="required" value="<%= (empty(params.get("city"))) ? "" : params.get("city") %>" class="form-control" />
 			</div>
 			<div class="form-group">
 				State:<input name="state" required="required" value="<%= (empty(params.get("state"))) ? "" : params.get("state") %>" class="form-control" /> 
 			</div>
 			<div class="form-group">
 				country:<input name="country" required="required" value="<%= (empty(params.get("country"))) ? "" : params.get("country") %>" class="form-control"/>
 			</div>
 			<div class="form-group">
 				Pin code: <input name="zipcode" required="required" value="<%= (empty(params.get("zipcode"))) ? "" : params.get("zipcode") %>" class="form-control"/>
 			</div>
 		</div>
 		<div class="col-sm-6">
 			<div class="form-group">
 				Amount:<%
 					String s=(String)session.getAttribute("gross_amount");
 			         out.println(s);
 					String all_pnames=(String)session.getAttribute("all_pnames");
 				%>
 				<input name="amount" type="hidden" value="<%= s %>" class="form-control" />
 			</div>
 			<div class="form-group">
 				Product Information:
 				<% out.println(all_pnames); %>
 				<input name="productinfo" type="hidden" value="<%= all_pnames %>" size="64" class="form-control" />
 			</div>
 			<div class="form-group">
 				 <% if(empty(hash)){ %>
            	<input type="submit" value="Submit" class="btn btn-success"/>
          		<% } %>
 			</div>
 		</div>
 	</div>
 </div>

  
         
       
    </form>


<%
	}
%>

</body>
</html>
<jsp:include page="UFooter.jsp"/>
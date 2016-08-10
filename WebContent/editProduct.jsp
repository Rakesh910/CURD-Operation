<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Iterator"%>
<%@page import="model.Product" %>
<%@page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Product Page</title>
<script  language="javascript" type="text/javascript">
function checkProduct(){
	var pid = document.frmaddprd.txtpid.value;
	var cid = document.frmaddprd.txtcid.value;
	var pnm= document.frmaddprd.txtpnm.value;
	var pdesc= document.frmaddprd.txtprocudtdesc.value;
	var price= document.frmaddprd.txtproprice.value;
	if(pid=="" || pid==null){
		alert("Enter a Product Id...!!");
		document.frmaddprd.txtpid.focus();
		return false;
	}else if(cid=="" || cid==null){
		alert("Enter a Category Id...!!");
		document.frmaddprd.txtcid.focus();
		return false;
	}else if(pnm=="" || pnm==null){
		alert("Enter a Product Name...!!");
		document.frmaddprd.txtpnm.focus();
		return false;
	}else if(pdesc=="" || pdesc==null){
		alert("Enter a Product Description...!!");
		document.frmaddprd.txtprocudtdesc.focus();
		return false;
	}else if(price=="" || price==null){
		alert("Enter a Product Price...!!");
		document.frmaddprd.txtproprice.focus();
		return false;
	}
	
	if(isNaN(pid)){
		alert("Product ID Must be a Number..!!");
		document.frmaddprd.txtpid.focus();
		return false;
	}
	
	if(isNaN(cid)){
		alert("Category ID Must be a Number..!!");
		document.frmaddprd.txtcid.focus();
		return false;
	}
	
	if(!isNaN(pnm)){
		alert("Product Name must be a String..!!");
		document.frmaddprd.txtpnm.focus();
		return false;
	}
	
	if((!isNaN(pdesc)) || ((pdesc.length)<25)){
		alert("Product description is too short OR Not a String..!");
		document.frmaddprd.txtprocudtdesc.focus();
		return false;
	}
	
	if((isNaN(price)) || price<0){
		alert("Please Enter Valid Price..!!");
		document.frmaddprd.txtproprice.focus();
		return false;
	}
}
</script>
</head>
<body>
<h1 align="center">Update Product Information</h1>
<form action="updateProduct" method="post">
<table width="50%" border="1">
<input type="hidden" value="<%=request.getParameter("edit") %>" name="editID" />
<%
	try{
		int id = Integer.parseInt(request.getParameter("edit"));
		ServletContext context=getServletContext();  
	    List list=(List)context.getAttribute("data");  
	    if(list.size()!=0){
	    	Iterator itr=list.iterator(); 
	    	while(itr.hasNext()){ 
	    		Product prd=(Product)itr.next();
	    		if(prd.getProductID()==id){%>
	 <tr>
		<td>PRODUCT ID</td>
		<td><input type="text" name="txtpid" value="<%=prd.getProductID() %>"/></td>
	</tr>
	<tr>
		<td>CATEGORY ID</td>
		<td><input type="text" name="txtcid" value="<%=prd.getCategoryID()%>"/></td>
	</tr>
	<tr>
		<td>PRODUCT NAME</td>
		<td><input type="text" name="txtpnm" value="<%=prd.getProductName() %>"/></td>
	</tr>
	<tr>
		<td>PRODUCT DESCRIPTION</td>
		<td><textarea rows="3" cols="50" name="txtprocudtdesc"><%=prd.getProductDesc() %></textarea></td>
	</tr>
	<tr>
		<td>PRODUCT PRICE</td>
		<td><input type="text" name="txtproprice" value="<%=prd.getProductPrice() %>"/></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="SAVE CHANGES" name="btnaddproduct" onclick="return checkProduct();"/></td>
	</tr>
	 <%}
	    	}
	    }
	}catch(Exception ex){ }%>  
	</table>
</form>
</body>
</html>
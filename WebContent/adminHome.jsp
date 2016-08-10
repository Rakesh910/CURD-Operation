
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Iterator"%>
<%@page import="model.Product" %>
<%@page import="java.util.List" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN HOME PAGE</title>
<script type="text/javascript">
	function deleteConfirm() {
		return confirm("Are You Sure to Remove this Product??");
	}
</script>
</head>
<body>
	<h1 align="center">Admin Home Page</h1>
	<hr>
	<b><a href="addProduct.jsp">Add Product </a>&nbsp;&nbsp;|</b>
	<hr>
	<table align='center' border='1'  cellspacing='5' cellpadding='10'  width='100%'>
		<th>PRODUCT ID</th>
		<th>CATEGORY ID</th>
		<th>PRODUCT NAME</th>
		<th>PRODUCT DESCRIPTION</th>
		<th>PRODUCT PRICE</th>
		<th colspan="3">OPTIONS</th>
		<%
			try{
				  ServletContext context=getServletContext();  
				    List list=(List)context.getAttribute("data");  
				    if(list.size()> 0){
				    	Iterator itr=list.iterator();  
					    while(itr.hasNext()){  
					     Product prd=(Product)itr.next();%>
					     <tr style="text-align: center;">
					<td><% out.print(prd.getProductID()); %></td>
					<td><% out.print(prd.getCategoryID()); %></td>
					<td><% out.print(prd.getProductName()); %></td>
					<td><% out.print(prd.getProductDesc()); %></td>
					<td><% out.print(prd.getProductPrice()); %></td>
					<td>
						<form action="editProduct.jsp?edit=<%=prd.getProductID()%>" method="post">
							<button type="submit" >Edit</button>
						</form>
					</td>
					<td>
						<form action="deleteProduct?del=<%=prd.getProductID()%>" method="post">
							<button type="submit" onclick="return deleteConfirm();">Delete</button>
						</form>
					</td>
					<td>
						<form action="viewProduct.jsp?pid=<%=prd.getProductID()%>" method="post">
							<button type="submit" >View</button>
						</form>
					</td></tr>
					   <%  }	
				    }else{%>
					<tr>
						<td colspan="6"><h4 align="center">Sorry..No Record Found.</h4>	</td>
					</tr>
			<% }
			}catch(Exception ex){
				
			}
		%>
	</table>
</body>
</html>
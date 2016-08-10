<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Iterator"%>
<%@page import="model.Product" %>
<%@page import="java.util.List" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Product Detail</h1>
<table width="50%" border="1">
<%
	try{
		int id = Integer.parseInt(request.getParameter("pid"));
		ServletContext context=getServletContext();  
	    List list=(List)context.getAttribute("data");  
	    if(list.size()!=0){
	    	Iterator itr=list.iterator(); 
	    	while(itr.hasNext()){ 
	    		Product prd=(Product)itr.next();
	    		if(prd.getProductID()==id){%>
	 <tr>
		<td>PRODUCT ID</td>
		<td><%=prd.getProductID() %></td>
	</tr>
	<tr>
		<td>CATEGORY ID</td>
		<td><%=prd.getCategoryID()%></td>
	</tr>
	<tr>
		<td>PRODUCT NAME</td>
		<td><%=prd.getProductName() %></td>
	</tr>
	<tr>
		<td>PRODUCT DESCRIPTION</td>
		<td><%=prd.getProductDesc() %></td>
	</tr>
	<tr>
		<td>PRODUCT PRICE</td>
		<td><%=prd.getProductPrice() %></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><a href="adminHome.jsp">Back to Home Page</a></td>
	</tr>
	 <%}
	    	}
	    }
	}catch(Exception ex){ }%>  
	</table>
</body>
</html>
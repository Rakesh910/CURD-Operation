<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shoping Cart</title>
</head>
<body>
<h1 align="center">Shopping Cart</h1>
<%
String unm = (String)request.getAttribute("uname");
if(unm == null){%>
	<h3 align="right"><a href="login.jsp" >Login</a> &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="register.jsp">Register</a></h3>
<% }else{
out.println("<h3 align='right'>Welcome "+unm+"</h3>");
request.setAttribute("uname", null);
out.print("<h4 align='right'><a href='index.jsp'>Logout</a></h4>");
}
%>
</body>
</html>
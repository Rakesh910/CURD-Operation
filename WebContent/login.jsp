<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN PAGE</title>
<script language="javascript" type="text/javascript">
 var unm,pwd;
 
 function validate() {
	 unm = document.frmlogin.txtunm.value;
	 pwd = document.frmlogin.txtpwd.value;
	 
	 if(unm=="" || unm==null){
		 alert("Enter UserName..!!");
		 document.frmlogin.txtunm.focus();
		 return false;
	 }else if(pwd=="" || pdw==null){
		 alert("Enter Password..!!");
		 document.frmlogin.txtpwd.focus();
		 return false;
	 }
	
}

</script>
</head>
<body>
	<h1 align="center">Login Page</h1>
	<form name="frmlogin" action="loginservlet" method="post">
		<table style="width: 80%" align="center">
			<tr>
				<td style="width: 20%">Username</td>
				<td><input type="text" name="txtunm" size="20"/></td>
			</tr>
			<tr>
				<td style="width: 20%">Password</td>
				<td><input type="password" name="txtpwd" ></td>
			</tr>
			<tr>
				<td style="width: 20%" colspan="2"><button type="submit" onclick="return validate();">LOGIN</button></td>
				
			</tr>
		</table>
	</form>

</body>
</html> 		
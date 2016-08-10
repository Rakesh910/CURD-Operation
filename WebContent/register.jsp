<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<script language="JavaScript" type="text/javascript" >
	var fnm,lnm,snm,addr,email;
	function registerValidate(){
		fnm = document.frmregister.txtfnm.value;
		lnm = document.frmregister.txtlnm.value;
		snm = document.frmregister.txtsnm.value;
		addr = document.frmregister.txtaddr.value;
		email = document.frmregister.txtemail.value;
		
		if(fnm=="" || fnm==null)
		{
			alert("Please enter first name");
			document.frmregister.txtfnm.focus();
			return false;
		}
		else if(lnm=="" || lnm==null)
		{
			alert("Please enter last name");
			document.frmregister.txtlnm.focus();
			return false;
		}
		else if(snm=="" || snm==null)
		{
			alert("Please enter Surname");
			document.frmregister.txtsnm.focus();
			return false;
		}
		else if(addr=="" || addr==null)
		{
			alert("Please Enter Address");
			document.frmregister.txtaddr.focus();
			return false;
		}else{
			i = email.indexOf('@');
			j = email.indexOf('.');
			diff = parseInt(j) - parseInt(i);
			k = parseInt(j)+1
			c = email.charAt(k);
			if(i<1 || diff<=1 || c=='')
			{	
				alert("Invalid email address");
				document.frmregister.txtemail.focus();
				return false;
			}
		}
	}	
</script>
</head>
<body>
<h1 align="center">Login Page</h1>
	<form name="frmregister" action="registerservlet" method="post">
		<table style="width: 50%">
			<tr>
				<td style="width: 20%">First Name</td>
				<td><input type="text" name="txtfnm" size="20"></td>
			</tr>
			<tr>
				<td style="width: 20%">Last Name</td>
				<td><input type="text" name="txtlnm" size="20"></td>
			</tr>
			<tr>
				<td style="width: 20%">Surname</td>
				<td><input type="text" name="txtsnm" size="20"></td>
			</tr>
			<tr>
				<td style="width: 20%">Address</td>
				<td><textarea rows="3" cols="16" name="txtaddr"></textarea></td>
			</tr>
			<tr>
				<td style="width: 20%">Email ID</td>
				<td><input type="text" name="txtemail" size="20"></td>
			</tr>
			
			<tr>
				<td style="width: 20%" colspan="2">
					<input type="submit" value="Submit" onClick="return registerValidate();"/>
				</td>
				
			</tr>
		</table>
	</form>
</body>
</html>
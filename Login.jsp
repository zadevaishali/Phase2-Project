<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login  Page</t>

<link type="text/css" rel="stylesheet" href="login.css"> 
</head>
<body>

<center><h1>Admin Login</h1></center>

<form action="maincontent.jsp" method="post">

<center>
 Username:<input type="text" placeholder="Enter Username" name="username" required><br/>
 Password:<input type="password" placeholder="Enter Password" name="password" required><br/>
 <input type="submit" value="Login">
 <input type="checkbox" checked="checked">Remember me

</center>

 
</form>

</body>
</html>
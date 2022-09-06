<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="addstyle.css"> 
</head>
<body>
<h1> Details About Students</h1>

<form action="addstudinfo.jsp" method="post" scope="session">
Id:<input type="number" name="id"><br>
Name: <input type="text" name="name"><br>
Lastname: <input type="text" name="lastname"><br>
Age:<input type="number" name="age"><br>
Class:<input type="number" name="studclass"><br>

<input type="submit" value="Save">
&nbsp;&nbsp;&nbsp;&nbsp;

<a href="studlist.jsp">List of all Students</a>
</form>
</body>
</html>
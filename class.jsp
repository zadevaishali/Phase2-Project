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
<h1> Details About Classes</h1>

<form action="addclassinfo.jsp" method="post" scope="session">
Id:<input type="number" name="id"><br>
Section: <input type="number" name="section"><br>
Subject: <input type="number" name="subject"><br>
Teacher: <input type="number" name="teacher"><br>
Time:<input type="text" name="time"><br>

<input type="submit" value="Save">
&nbsp;&nbsp;&nbsp;&nbsp;

<a href="classlist.jsp">List </a>
</form>
</body>
</html>
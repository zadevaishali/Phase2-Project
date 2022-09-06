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
<h1> Details About Teachers</h1>

<form action="addteacherinfo.jsp" method="post" scope="session">
Id:<input type="number" name="id"><br>
FirstName: <input type="text" name="fname"><br>
LastName: <input type="text" name="lname"><br>
age:<input type="number" name="age"><br>

<input type="submit" value="Save">

&nbsp;&nbsp;&nbsp;&nbsp;

<a href="teacherlist.jsp">List of all Teachers</a>
</form>
</body>
</html>
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
<h1> Details About Subjects</h1>

<form action="addsubjectinfo.jsp" method="post" scope="session">
ID: <input type="number" name="id"><br>
Name:<input type="text" name="name"><br>
ShortCut: <input type="text" name="shortcut"><br>
<input type="submit" value="Save">
&nbsp;&nbsp;&nbsp;&nbsp;

<a href="subjectlist.jsp">List of all Subjects</a>
</form>
</body>
</html>
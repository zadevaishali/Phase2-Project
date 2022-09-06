<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Information</title>

</head>
</head>
<body>
<jsp:include page="maincontent.jsp"></jsp:include>

<h2>Academy Students</h2>

<!-- mysql configuration -->
<sql:setDataSource var="conn" 
driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://localhost:3306/learnersacademy"
user="root"
password="root"
/>

<sql:query var="result" dataSource="${conn }">

		select * from studentlist;
</sql:query>

<table border=2, width="100%" bgcolor=cyan>

<tr>
  <th>Id</th>
  <th>First Name</th>
  <th>Last Name</th>
  <th>Age</th>
  <th>Class</th>
  
 </tr> 
 
 <c:forEach var="tempStudent" items="${result.rows }">
						<tr>
						   <td>${tempStudent.id}</td>

							<td>${tempStudent.name}</td>
							<td>${tempStudent.lastname}</td>
							<td>${tempStudent.age}</td>
							<td>${tempStudent.studclass}</td>



						</tr>


					</c:forEach>

				</table>



</body>
</html>
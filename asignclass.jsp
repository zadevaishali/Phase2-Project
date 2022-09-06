<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="maincontent.jsp"></jsp:include>
<h2> Information </h2>

<!-- mysql configuration -->
<sql:setDataSource var="conn" 
driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://localhost:3306/learnersacademy"
user="root"
password="root"
/>

<sql:query var="result" dataSource="${conn }">

			SELECT * FROM classlist
  INNER JOIN subjectlist
  ON classlist.id = subjectlist.id
  INNER JOIN teacherlist
  ON subjectlist.id = teacherlist.id;
</sql:query>


<table border=2, width="100%" bgcolor=cyan>

<tr>  
 
<th>Teacher Name</th>  
<th>Teacher Last Name</th>  

<th>Section</th> 


<th>Subject</th>  

</tr> 

<c:forEach var="tempClass" items="${result.rows }">
						<tr>

							<td>${tempClass.fname}</td>
							<td>${tempClass.lname}</td>
							
							<td>${tempClass.section}</td>
							
							<td>${tempClass.shortcut}</td>							
							
							

</tr>


					</c:forEach>

				</table>

					

 

</body>
</html>
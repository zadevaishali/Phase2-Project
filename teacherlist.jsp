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
<h2> Teachers LIST </h2>

<!-- mysql configuration -->
<sql:setDataSource var="conn" 
driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://localhost:3306/learnersacademy"
user="root"
password="root"
/>

<sql:query var="result" dataSource="${conn }">

		select * from teacherlist;
</sql:query>

<table border=2, width="100%" bgcolor=cyan>

					<tr>
                        <th>Id</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>age</th>

					</tr>

					<c:forEach var="tempStudent" items="${result.rows }">
						<tr>
                            <td>${tempStudent.id}</td>
							<td>${tempStudent.fname}</td>
							<td>${tempStudent.lname}</td>
							<td>${tempStudent.age}</td>



						</tr>


					</c:forEach>

				</table>

</body>
</html>
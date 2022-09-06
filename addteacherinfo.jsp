<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- to fetch the datafrom database add mysql connector to the lib folder -->

<sql:setDataSource var="conn"
driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/learnersacademy"
user="root" password="root" scope="session"
/>


 

<sql:update var="result" dataSource="${conn }">
INSERT INTO teacherlist (id,fname,lname,age) VALUES ("${param.id }","${param.fname }", "${param.lname}","${param.age}")
</sql:update>
Congratulations ! Data inserted
successfully.</font>
 
<jsp:forward page="teacherlist.jsp"></jsp:forward>

</body>
</html>
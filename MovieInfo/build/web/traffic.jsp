<%-- 
    Document   : traffic
    Created on : Jun 1, 2014, 8:17:21 PM
    Author     : Satinder
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
<title>Traffic Data</title>
   <link rel="stylesheet" type="text/css" href="checkout.css"/>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/murach"
     user="root"  password="sesame"/>

<sql:query dataSource="${snapshot}" var="result">
  SELECT * from visit;
</sql:query>
 
  
  
  
  
  
  
<table border="1" width="400" align="center">
<tr>
<th>Website Shopping Traffice</th>
</tr>

<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.time}"/></td>
</tr>
</c:forEach>
</table>

</body>
</html>
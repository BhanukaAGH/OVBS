<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/admin-user.css">
	<title>Users</title>
	<link rel="shortcut icon" type="image/png" href="img/logo.png">
</head>
<body>
	<!-- check user login or not  -->
	<%
		if(session.getAttribute("user")==null){
			response.sendRedirect("index.jsp");
		}
	%>

	<form action="GiveAdminServlet" method="post" id="updateUserType"></form>
    <form action="AdminDeleteUserAccount" method="post" id="deleteUser"></form>

	<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/ovbs"
        user="root" password="root123@"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        select * from ovbs.user;
    </sql:query>
     
    <section class="banner"></section>
    <section class="User">
        <h1>Users</h1>
        <table>
            <tr>
                <th>Username</th>
                <th>Email</th>
                <th>User Type</th>
                <th>Change User Type</th>
                <th>Delete User Account</th>
            </tr>
            <c:forEach var="u" items="${listUsers.rows}">
	            <tr>
	                <td><c:out value="${u.username}" /></td>
	                <td><c:out value="${u.email}" /></td>
	                <td><c:out value="${u.type}" /></td>
	                <td><button form="updateUserType" value="${u.id}" name="admin">admin</button></td>
                	<td><button form="deleteUser" value="${u.id}" name="delete">delete</button></td>
	            </tr>
            </c:forEach>
        </table>
    </section>

</body>
</html>
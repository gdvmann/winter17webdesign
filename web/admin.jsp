<%-- 
    Document   : admin
    Created on : Jan 25, 2017, 8:51:25 PM
    Author     : Dev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="include/css/bootstrap.css"/>
        <script src="include/js/jquery-3.1.1.min.js"></script>
        <script src="include/js/boostrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <div class=container">
        <h1>List of Users</h1>
        <table class="table-condensed table">
            <tr>
                <th>Username</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Role</th>
                <th>Action</th>
            </tr>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.username}</td>
                    <td>${user.firstname}</td>
                    <td>${user.lastname}</td>
                    <td>${user.role}</td>
                    <td>
                <form action="AdminServlet" method="post">
                    <input type="hidden" name="action" value="removeUser"/>
                    <input type="hidden" name="username" value="${user.username}"/>
                    <input class="btn btn-xs btn-danger" type="submit" value="Remove"/>
                </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        
         <jsp:include page="/footer.jsp"/>
        </div>
    </body>
</html>

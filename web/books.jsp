<%-- 
    Document   : books
    Created on : Feb 28, 2017, 7:18:06 PM
    Author     : Dev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Books Page</title>
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
                <th>Book Name</th>
                <th>Author</th>
                <th>Description</th>
                <th>Year</th>
                <th>Action</th>
            </tr>
            <c:forEach var="book" items="${books}">
                <tr>
                    <td>${book.bookname}</td>
                    <td>${book.author}</td>
                    <td>${book.description}</td>
                    <td>${book.year}</td>
                    <td>
                <form action="bookServlet" method="post">
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

<%-- 
    Document   : home
    Created on : Jan 11, 2017, 8:46:02 PM
    Author     : Dev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="include/css/bootstrap.css"/>
        <link rel="stylesheet" href="include/css/main.css"/>
        <script src="include/js/jquery-3.1.1.min.js"></script>
        <script src="include/js/boostrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <div class="container">
            <div class="container">
            <div class="jumbotron">
            <h1>Hello, ${sessionScope.user.username}</h1>
            <p>
                Your password is ${sessionScope.user.password}
            </p>
            </div>
            <p>
                <!-- this is how you comment ${sessionScope.user.username} -->
            </p>
            <jsp:include page="/footer.jsp"/>
        </div>
    </body>
</html>

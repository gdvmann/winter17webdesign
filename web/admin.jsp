<%-- 
    Document   : admin
    Created on : Jan 25, 2017, 8:51:25 PM
    Author     : Dev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h1>Hello World!</h1>
        
         <jsp:include page="/footer.jsp"/>
        </div>
    </body>
</html>

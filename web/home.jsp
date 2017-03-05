<%-- 
    Document   : home
    Created on : Jan 11, 2017, 8:46:02 PM
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
                Welcome to your Homepage
            </p>
            </div>
            <div class="panel panel-default">
                    <div class=""panel-heading">Create new Post</div>
                    <div class="panel-body">
                        <form action="Post" method="post">
                            <input type="hidden" name="action" value="create"/>
                            <input type="hidden" name="userid" value="${sessionScope.user.id}"/>
                            <textarea class="form-control" rows="5" name="content">
                                

                            </textarea>
                            <input type="submit" class="btn btn-default" value="Submit"/>
                        </form>
                    </div>
                </div>
            <c:forEach var="post" items="${posts}">                
                <div class="panel panel-default">
                    <div class="panel-heading">By: ${post.userId}</div>
                    <div class="panel-body"><p>${post.content}</p></div>
                </div>
            </c:forEach>
            <p>
                <!-- this is how you comment ${sessionScope.user.username} -->
            </p>
            <jsp:include page="/footer.jsp"/>
        </div>
    </body>
</html>

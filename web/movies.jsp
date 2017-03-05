<%-- 
    Document   : movies
    Created on : Mar 5, 2017, 4:25:47 AM
    Author     : Dev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Movies Page</title>
        <link rel="stylesheet" href="include/css/bootstrap.css"/>
        <script src="include/js/jquery-3.1.1.min.js"></script>
        <script src="include/js/boostrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <br>
        <br>
        <div class=container">
        <h1>List of Movies</h1>
        <table class="table-condensed table">
            <tr>
                <th></th>
                <th>Movie Title</th>
                <th>Description</th>
                <th>Rating</th>
                <th>Year</th>
                <th>Action</th>
            </tr>
            <c:forEach var="movie" items="${movies}">
                <tr>
                    <td>
                        <form action="MovieServlet" method="post">
                    <input type="hidden" name="action" value="selectMovie"/>
                    <input type="hidden" name="userid" value="${sessionScope.user.username}"/>
                    <input type="hidden" name="moviename" value="${movie.moviename}"/>
                    <input class="btn btn-xs btn-success" type="submit" value="Select"/>
                    
                </form>
                    </td>
                    
                    <td>${movie.moviename}</td>
                    <td>${movie.description}</td>
                    <td>${movie.rating}</td>
                    <td>${movie.year}</td>
                    <td>
                <form action="MovieServlet" method="post">
                    <input type="hidden" name="action" value="editMovie"/>
                    <input type="hidden" name="moviename" value="${movie.moviename}"/>
                    <input type="hidden" name="description" value="${movie.description}"/>
                    <input type="hidden" name="rating" value="${movie.rating}"/>
                    <input type="hidden" name="year" value="${movie.year}"/>
                    <input class="btn btn-xs btn-primary" type="submit" value="Edit"/>
                </form>
                <form action="MovieServlet" method="post">
                    <input type="hidden" name="action" value="removeMovie"/>
                    <input type="hidden" name="moviename" value="${movie.moviename}"/>
                    <input class="btn btn-xs btn-danger" type="submit" value="Remove"/>
                    
                </form>
                
                    </td>
                </tr>
            </c:forEach>
         
        </table>
        <h2>Add a Movie</h2>
        
        <form action="MovieServlet" method="post">
        <input type="hidden" name="action" value="create"/>
        <table class="table-condensed table">
            <tr>
                <th>Movie Title</th>
                <th>Description</th>
                <th>Rating</th>
                <th>Year</th>
                <th>Action</th>
            </tr>
            
                
                <td><textarea class="form-control" rows="1" name="moviename">${movie1}</textarea></td>
                <td><textarea class="form-control" rows="1" name="description">${description1}</textarea></td>
                <td><textarea class="form-control"  name="rating">${rating1}</textarea></td>
                <td><textarea class="form-control" rows ="1" name="year">${year1}</textarea></td>
                    <td>
                
                    
                    <input type="submit" class="btn btn-default" value="Submit"/>
                
                    </td>

        </table>

        </form>
         <jsp:include page="/footer.jsp"/>
        </div>
    </body>
</html>

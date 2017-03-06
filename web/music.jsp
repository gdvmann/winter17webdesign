<%-- 
    Document   : music
    Created on : Mar 5, 2017, 5:52:01 AM
    Author     : Dev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Music Page</title>
        <link rel="stylesheet" href="include/css/bootstrap.css"/>
        <script src="include/js/jquery-3.1.1.min.js"></script>
        <script src="include/js/boostrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <br>
        <br>
        <div class=container">
        <h1>List of Music</h1>
        <table class="table-condensed table">
            <tr>
                <th></th>
                <th>Song Title</th>
                <th>Artist</th>
                <th>Album</th>
                <th>Year</th>
                <th>Action</th>
            </tr>
            <c:forEach var="music" items="${songs}">
                <tr>
                    <td>
                        <form action="MusicServlet" method="post">
                    <input type="hidden" name="action" value="selectMusic"/>
                    <input type="hidden" name="userid" value="${sessionScope.user.username}"/>
                    <input type="hidden" name="title" value="${music.title}"/>
                    <input class="btn btn-xs btn-success" type="submit" value="Select"/>
                    
                </form>
                    </td>
                    
                    <td>${music.title}</td>
                    <td>${music.artist}</td>
                    <td>${music.album}</td>
                    <td>${music.year}</td>
                    <td>
                <form action="MusicServlet" method="post">
                    <input type="hidden" name="action" value="editMusic"/>
                    <input type="hidden" name="title" value="${music.title}"/>
                    <input type="hidden" name="artist" value="${music.artist}"/>
                    <input type="hidden" name="album" value="${music.album}"/>
                    <input type="hidden" name="year" value="${music.year}"/>
                    <input class="btn btn-xs btn-primary" type="submit" value="Edit"/>
                </form>
                <form action="MusicServlet" method="post">
                    <input type="hidden" name="action" value="removeMusic"/>
                    <input type="hidden" name="title" value="${music.title}"/>
                    <input class="btn btn-xs btn-danger" type="submit" value="Remove"/>
                    
                </form>
                
                    </td>
                </tr>
            </c:forEach>
         
        </table>
        <h2>Add a Song</h2>
        
        <form action="MusicServlet" method="post">
        <input type="hidden" name="action" value="create"/>
        <table class="table-condensed table">
            <tr>
                <th>Song Title</th>
                <th>Artist</th>
                <th>Album</th>
                <th>Year</th>
                <th>Action</th>
            </tr>
            
                
                <td><textarea class="form-control" rows="1" name="title">${title1}</textarea></td>
                <td><textarea class="form-control" rows="1" name="artist">${artist1}</textarea></td>
                <td><textarea class="form-control"  name="album">${album1}</textarea></td>
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

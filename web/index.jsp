<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>website</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="include/css/main.css"/>
        <link rel="stylesheet" href="include/css/bootstrap.css"/>
        <script src="include/js/jquery-3.1.1.min.js"></script>
        <script src="include/js/boostrap.min.js"></script>
    </head>
    <body> <!-- this is how you comment -->
        <div class="container-fluid">
            <c:if test="${error_message != null}">
                <div class="alert alert-info">
                    <strong> ${error_message}</strong>
                </div>
            </c:if>
            
            <form class="form-horizontal" action="Login" method="post">
              <input type="hidden" name="action" value="login"/>
              <div class="form-group">
                <label class="control-label col-sm-2">Email</label>
                <div class="col-sm-6">
                <input class="form-control col-sm-10" type="email" name="email" value="${user.username}"/>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-2">Password</label>
                <div class="col-sm-6">
                <input class="form-control col-sm-10" type="password" name="password"/>
                </div>
              </div>
               <div class="form-group">
                   <label class="control-label col-sm-2"></label>
                  <div class="col-sm-10">
                    <input class="btn btn-default" type="submit" value="Login"/>
                    <a href="RegisterServlet" class="btn btn-info" role="button">Register</a>
                  </div>
               </div>
            </form>
        
        </div>
    </body>
</html>

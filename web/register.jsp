<%-- 
    Document   : register
    Created on : Mar 5, 2017, 3:16:14 PM
    Author     : Dev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>Registration Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="include/css/main.css"/>
        <link rel="stylesheet" href="include/css/bootstrap.css"/>
        <script src="include/js/jquery-3.1.1.min.js"></script>
        <script src="include/js/boostrap.min.js"></script>
    </head>
    <body> <!-- this is how you comment -->
        </div>
        
       
        
            <div class="container-fluid">
             <h1>Registration Page</h1>
             <br>
            <form class="form-horizontal" action="RegisterServlet" method="post">
            
            <input type="hidden" name="action" value="create"/>
            <div class="form-group">
            <div class="col-sm-6">
            <input name="firstname"  placeholder="Enter your first name" type="text">
            </div>
            </div>
            <div class="form-group">
            <div class="col-sm-6">
            <input name="lastname"  placeholder="Last name" type="text">
            </div>
            </div>
            <div class="form-group">
            <div class="col-sm-6">
            <input name="email"  placeholder="email" type="text"> 
            </div>
                </div>
            <div class="form-group">
            <div class="col-sm-6">
            <input name="password"  placeholder="password" type="password"> 
            </div>
                </div>
            <div class="form-group">
            <div class="col-sm-6">
            <input name="repassword"  placeholder="repassword" type="password"> 
            </div>
            </div>
            <div class="form-group">
            <div class="col-sm-6">
            <input value="Register"   type="submit" class="btn btn-xs btn-info"> 
            
            </form>
            </div>
            </div>      
            <form action="RegisterServlet" method="post">
                    <input type="hidden" name="action" value="cancel"/>
                    <input class="btn btn-xs btn-warning" type="submit" value="Cancel"/>
                    
            </form>
            </div>
            </div>   
            
            </div>
        
    </body>
</html>

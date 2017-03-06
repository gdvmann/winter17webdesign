<%-- 
    Document   : header
    Created on : Feb 1, 2017, 8:51:53 PM
    Author     : Dev
--%>
<style>
    .navbar-inverse{
    background-color: #006699; 
    
    }
    
    </style>
<nav class="navbar-inverse navbar-fixed-top">
            <div class="container">
            <div class="container-fluid">
                <div class="navbar-header">
                  <a class="navbar-brand" href="#">Awesome Website</a>
                </div>
                <ul class="nav navbar-nav">
                  <li><a href="HomeServlet">Home</a></li>
                  <li><a href="bookServlet">Books</a></li>
                  <li><a href="MovieServlet">Movies</a></li>
                  <li><a href="MusicServlet">Music</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href=""><span class="glyphicon glyphicon-user"></span> 
                            ${sessionScope.user.username}</a>
                    </li>
                <li><a href="AdminServlet"><span class="glyphicon glyphicon-cog"></span> Admin</a></li>
                <li><a href="Login?action=logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
              </ul>
              </div>
            </div>
            </nav>

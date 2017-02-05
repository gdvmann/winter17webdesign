<%-- 
    Document   : header
    Created on : Feb 1, 2017, 8:51:53 PM
    Author     : Dev
--%>

<nav class="navbar navbar-default">
            <div class="container">
            <div class="container-fluid">
                <div class="navbar-header">
                  <a class="navbar-brand" href="#">WebSiteName</a>
                </div>
                <ul class="nav navbar-nav">
                  <li class="active"><a href="#">Home</a></li>
                  <li><a href="#">Page 1</a></li>
                  <li><a href="#">Page 2</a></li>
                  <li><a href="#">Page 3</a></li>
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

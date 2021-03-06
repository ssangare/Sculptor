<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Login</title>
    
    <!-- Bootstrap -->
    <link href="bootstrap-3.1.1-dist/css/bootstrap.css" rel="stylesheet">
	<link href="bootstrap-3.1.1-dist/css/custom.css" rel="stylesheet">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
  </head>
  <body>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap-3.1.1-dist/js/bootstrap.min.js"></script>
	
	<!-- Custom Javascript -->
	<script src="bootstrap-3.1.1-dist/js/Sculptor.js"></script>
	
	<!-- Navigation bar with Sculptor brand, search bar, login, create page -->
	<nav id="nav-bar" class="navbar-inverse navbar-static-top" role="navigation">
		<div class="container">
			<div class="navbar-header" id="nav-bar-header">
				<a class="navbar-brand" href="index.html">Sculptor</a>
			</div>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="loginpage.jsp">Login</a></li> 
					<li><a href="registeruser.jsp">Register</a></li>
				</ul>
		</div>
	</nav>


	<!-- Login header -->
	<div id="header">
      <div class="container">
      		<div id="login-form">				
				<div class="form-group">				
				<form class="form-signin" method="POST" action="/login" role="form">

					<!-- Error checking -->
				    <c:if test="${param.error == 'true'}">
				    	<!-- Show an alert -->				   
				    	<div id="login-alert-box" class="alert alert-danger alert-dismissable">
				    		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				    		<c:choose>
					    		<c:when test="${param.nouser == 'true'}">
					    			Please log in to continue.
					    		</c:when>
					    		<c:when test="${param.missingfields == 'true'}">
					    			You are missing some fields.
					    		</c:when>
					    		<c:otherwise>					    		
					    			Wrong User/Password Combination.				    	
					    		</c:otherwise>
				    		</c:choose>
				    	</div>
				    </c:if>
				    
					<c:if test="${success == 'true'}">
						Registration successful! Please log in to your account.
					</c:if>
					
				    <h3>Login</h3>

					<!-- Login Fields, webID and password -->
					<div class="input-group bottom-margin-10px ${param.error ? 'has-error' : ''}">
						<span class="input-group-addon glyphicon glyphicon-user"></span>
						<input type="text" name="webId" class="form-control" id="loginWeb" placeholder="Website ID">
					</div>

					<div class="input-group bottom-margin-10px ${param.error ? 'has-error' : ''}">
						<span class="input-group-addon glyphicon glyphicon-lock"></span>
						<input type="password" name="password" class="form-control" id="loginPass" placeholder="Password">
					</div>
					<!-- Buttons here -->					
					<input id="login-button" type="submit" class="btn btn-success" value="Login"> 				
				</form>		
				</div>
			</div>
      </div>
    </div>
  </body>
</html>
<!-- Page for registering a user -->

<html>
	<head>
	<meta charset="utf-8">
		<title>Register</title>
		
		<!-- Bootstrap -->
		<link href="bootstrap-3.1.1-dist/css/bootstrap.css" rel="stylesheet">
		<link href="bootstrap-3.1.1-dist/css/custom.css" rel="stylesheet">

	</head>
	<body>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="bootstrap-3.1.1-dist/js/bootstrap.min.js"></script>
		
		<!-- Custom Javascript -->
		<script src="bootstrap-3.1.1-dist/js/Sculptor.js"></script>
		
		<!-- Basic navigation bar, has brand, search, login, register and create site -->
		<nav class="navbar navbar-inverse" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="index.html">SCULPTOR</a>
				</div>
					<ul class="nav navbar-nav navbar-right">
						<li><form class="navbar-form " role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Find a Course Website">
							</div>
						</form></li>
						<li class="right-divider"><a href="loginpage.jsp">LOG-IN</a></li>
						<li class="right-divider"><a href="registeruser.jsp">REGISTER</a></li>  
						<li><a href="#">CREATE WEBSITE</a></li>
					</ul>
			</div>
		</nav>
		
		<!-- Login Container -->
		<div class="container">
			<div class="col-md-4 col-md-offset-2 outerDiv">				
				<div class="form-group innerDiv">
					<form method="POST" action="register">
					
						<!-- WebsiteID, Email, and Password fields -->
						<div class="input-group form-width">
							<span class="input-group-addon input-width">Website ID</span>
							<input type="text" class="form-control" id="registerWeb" placeholder="Software-Engineering">
						</div>
						<div class="input-group form-width">
							<span class="input-group-addon input-width">Email</span>
							<input type="text" class="form-control" name="registerEmail" id="registerEmail" placeholder="John.Doe@stonybrook.edu">
						</div>
						<div class="input-group form-width">
							<span class="input-group-addon input-width">Password</span>		
							<input type="password" class="form-control" name="registerPass" id="registerPass" placeholder="********">
						</div>		
						<br />
						
					<!-- Buttons here -->								
					<input type="submit" class="btn btn-default" value="REGISTER"/>	
				</form>		
				</div>
			</div>
				
		</div>
	</body>
</html>
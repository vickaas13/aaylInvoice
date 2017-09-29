<!DOCTYPE html>

  <script type="text/javascript" src="<c:url value='/js/jquery-1.10.2.js' />"></script>
<html>

<head>
<meta charset="UTF-8">
<title>Sign-Up/Login Form</title>
<link 	href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600'
		rel='stylesheet' type='text/css'>
<link 	rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link 	rel="stylesheet" href="css/style.css">
</head>


<body>
	<h1></h1>
	<h1>Welcome to Invoice Generation Application</h1>
	<%
	String str=(String)request.getAttribute("message");
	if(str!=null)
		out.println("<h1> "+str+"</h1>");		
	%> 
	 	
	<div class="form">					<!-- div 1 starts here  -->
		<ul class="tab-group">
			<li class="tab active "><a href="#signup">Sign Up</a></li>
			<li class="tab "><a href="#login">Log In</a></li>
		</ul>

		<div class="tab-content">		<!-- div 2 starts here  -->
			<div id="signup">           <!-- div 3 starts here  -->
				<h1>Register Here</h1>

				<form action="RegisterController" method="post">

					<div class="top-row">
						<div class="field-wrap">
							<label> First Name <span class="req">*</span></label> 
							<input type="text" name="firstName" " required autocomplete="off" />
						</div>

						<div class="field-wrap">
							<label> Last Name<span class="req">*</span></label> 
							<input type="text" name="lastName" required autocomplete="off" />
						</div>
					</div>

					<div class="field-wrap">
						<label> Email Address(This will be your UserName) <span class="req">*</span></label> 
						<input type="text" name="email" required autocomplete="off" />
					</div>
					
					<div class="field-wrap">
						<label> Mobile Number <span class=""></span></label> 
						<input type="text" name="mobileNumber"  autocomplete="off" />
					</div>

					<div class="field-wrap">
						<label> Password<span class="req">*</span></label> 
						<input type="password" name="passWord"  required autocomplete="off" />
					</div>

					<button type="submit" class="button button-block" />
					Get Started
					</button>

				</form>

			</div>

			<div id="login">
				<h1>Login</h1>
				<form action="LoginController" method="post">
					<div class="field-wrap">
						<label> Email Address<span class="req">*</span></label> 
						<input type="email" name="email" value="a@g.com" required
							autocomplete="off" />
					</div>
					<div class="field-wrap">
						<label> Password<span class="req">*</span></label> 
						<input type="password" name="passWord" value="vikas" required
							autocomplete="off" />
					</div>
					<p class="forgot">
						<a href="#">Forgot Password?</a>
					</p>
					<input type="submit" class="button button-block" value="Log In">
				</form>
			</div>
		</div>
		<!-- tab-content -->

	</div>
	<!-- /form -->
	<script	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="js/index.js"></script>

</body>
</html>

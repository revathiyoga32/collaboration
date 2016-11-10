<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Sign Up Password Form Widget  Responsive Widget Template | Home :: w3layouts</title>
<link href="<c:url value='resources/css/styles.css'/>" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!--google fonts-->
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<script src="<c:url value='resources/js/jquery-2.1.4.min.js'/>"></script>
</head>
<body>		
	<!-- login -->
		<div class="login-section w3l">
		<h1>Sign Up </h1>
		<div class="sig-top agileits">
			<div class="signup">
			<div class="modal-content modal-info">
				<div class="modal-header wthree">				
					<h3>SIGN UP</h3>						
				</div>
				<div class="modal-body modal-spa">
					<div class="login-form">			
						<form action="#" method="post" id="signup">
						<ol>
						<li>
							<input type="email" id="name" name="name" placeholder="User name" title="Name" required />	
						</li>
						<li>
							<input type="password" class="lock" name="password" title="Minimum 8 characters, one number, one uppercase and one lowercase letter" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*" placeholder="Password" id="password1" required />
								<p class="validation01">
									<span class="invalid">Minimum 8 characters, one number, one uppercase letter and one lowercase letter</span>
									<span class="valid">Your password meets our requirements, thank you.</span>
								</p>
							</li>
							<li>
								<input type="password" class="lock" name="password" title="Minimum 8 characters, one number, one uppercase and one lowercase letter" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*" placeholder="Confirm password" id="password2" required />
								<p class="validation01">
									<span class="invalid">Minimum 8 characters, one number, one uppercase letter and one lowercase letter</span>
									<span class="valid">Your password meets our requirements, thank you.</span>
								</p>
							</li>
							</ol>
							
							<input type="submit" value="SIGN UP">
						</form>	
						<!-- script for password confirmation -->
						<script type="text/javascript">
							window.onload = function () {
								document.getElementById("password1").onchange = validatePassword;
								document.getElementById("password2").onchange = validatePassword;
							}
							function validatePassword(){
							var pass2=document.getElementById("password2").value;
							var pass1=document.getElementById("password1").value;
							if(pass1!=pass2)
								document.getElementById("password2").setCustomValidity("Passwords Don't Match");
							else
							document.getElementById("password2").setCustomValidity('');	 
							//empty string means no validation error
							}
						</script>
						<!-- //script for password confirmation -->
																											
						</div>									
					</div>
				</div>
			</div>
	       </div>
	       </div>
			
</body>
</html>
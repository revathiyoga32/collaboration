<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@page isELIgnored="false" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Sign Up</title>
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
						<form:form id="signup" commandName="ust" method="post" action="./addUser" >
						<ol>
						<li>
							<form:input type="text" path="username" placeholder="User name"  required="" />	
						</li>
						<li>
							<form:input type="email" path="email"  placeholder="email"  required="" />
								
							</li>
							<li>
								<form:input type="password" path="password"   placeholder="password" required="" />
								
							</li>
							<li>
							<form:input type="text" path="dateofbirth"  placeholder="Date of birth"  required="" />
								
							</li>
							
							</ol>
							
							<input type="submit" value="SIGN UP">
						</form:form>	
						
																											
						</div>									
					</div>
				</div>
			</div>
	       </div>
	       </div>
			
</body>
</html>
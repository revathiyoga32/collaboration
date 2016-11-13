<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<!-- Custom Theme files -->
<link href="<c:url value='resources/css/bootstrap.css'/>" type="text/css" rel="stylesheet" media="all">
<link href="<c:url value='resources/css/style.css'/>" type="text/css" rel="stylesheet" media="all">

<link rel="stylesheet" href="<c:url value='resources/css/flexslider.css'/>" type="text/css" media="all" property="" /> 
<!-- //Custom Theme files -->
<!-- js -->
<script src="<c:url value='resources/js/jquery-1.11.1.min.js'/>"></script> 
<!-- //js -->
<!-- web-fonts --> 
<link href='//fonts.googleapis.com/css?family=Redressed' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- //web-fonts -->
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="<c:url value='resources/js/move-top.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/js/easing.js'/>"></script>	

<!-- //end-smooth-scrolling -->	
</head>
<body>
	<!-- banner -->
	<div class="banner">
		<!-- header -->
		<div class="header">
			<div class="container">
				<div class="menu">
					<a href="#" class="navicon"></a> 
					<div class="toggle">
						<h1><a href="index.html">Blabby</a></h1>
						<ul class="toggle-menu">
							<li><a href="index.html" class="active"> Home</a></li>
							<li><a href="about.html"> About</a></li>
							<li><a href="signin"> SignIn</a></li>
							<li><a href="signup"> SignUp</a></li>
							<li><a href="contact.html"> Contact Us</a></li>
						</ul>
					</div> 
				</div> 
				<div class="logo">
					<h3>Blabby</h3>
				</div> 
				<div class="social-icons">
					<ul>
						<li><a href="#"> </a></li>
						<li><a href="#" class="fb"> </a></li> 
					</ul>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		
			</div>
		
	<!-- //banner -->
		<div class="clearfix"> </div> 
	<!-- //footer --> 
	<!-- menu-js -->
	<script>
		$('.navicon').on('click', function (e) {
		  e.preventDefault();
		  $(this).toggleClass('navicon--active');
		  $('.toggle').toggleClass('toggle--active');
		});
	</script>
	
</body>
</html>
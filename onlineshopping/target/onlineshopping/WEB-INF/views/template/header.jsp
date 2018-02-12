<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="image" value="/resources/images" />
<spring:url var="js" value="/resources/js" />
<spring:url var="video" value="/resources/video" />
<!DOCTYPE html>
<html>
<head>
<title>Prezzie | | Home</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Nokia, Samsung, LG, SonyEricsson, Motorola" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //custom-theme -->
<link href="${css}/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- font-awesome-icons -->
<link href="${css}/font-awesome.css" rel="stylesheet">
<!-- //font-awesome-icons -->
<link href="${css}/owl.carousel.css" rel="stylesheet">
<link href="${css}/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="//fonts.googleapis.com/css?family=Tangerine:400,700"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link
	href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"
	rel="stylesheet">
</head>
<body>
	<!-- banner -->

	<div class="banner_top" id="home">
		<div data-vide-bg="${video}/gift-packs">
			<div class="center-container">
				<div class="w3_agile_header">
					<div class="w3_agileits_logo">
						<h1>
							<a href="index">prezzie<span>Life is a gift</span></a>
						</h1>
					</div>
					<div class="w3_menu">
						<div class="agileits_w3layouts_banner_info">

							<form action="#" method="post">
								<input type="search" name="search" placeholder=" " required="">
								<input type="submit" value="Search">
							</form>
						</div>
						<div class="top-nav">
							<nav class="navbar navbar-default">
								<div class="container">
									<button type="button" class="navbar-toggle collapsed"
										data-toggle="collapse"
										data-target="#bs-example-navbar-collapse-1">Menu</button>
								</div>
								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">

								
									<div id="navbar" class="navbar-collapse collapse">
										<ul class="nav navbar-nav">

											<li><a href="<c:url value="/product/productList/all" />">All
													Products</a></li>
											<li><a href="<c:url value="/about" />">About Us</a></li>
											<li><a href="<c:url value="/contact" />">ContactUs</a></li>
											<li><a href="<c:url value="/help" />">Help</a></li>
										</ul>
										<ul class="nav navbar-nav pull-right">
											<c:if
												test="${pageContext.request.userPrincipal.name != null}">
												<li><a>Welcome:
														${pageContext.request.userPrincipal.name}</a></li>
												<li><a
													href="<c:url value="/j_spring_security_logout" />">Logout</a></li>

												<c:if
													test="${pageContext.request.userPrincipal.name != 'admin'}">
													<li><a href="<c:url value="/customer/cart" />"><span
															class="glyphicon glyphicon-Shopping-Cart"></span></a></li>
												</c:if>

												<c:if
													test="${pageContext.request.userPrincipal.name == 'admin'}">
													<li><a href="<c:url value="/admin" />">Admin</a></li>
												</c:if>

											</c:if>

											<c:if
												test="${pageContext.request.userPrincipal.name == null}">
												<li><a href="<c:url value="/login" />"><span
														class="glyphicon glyphicon-user"></span>Login</a></li>
												<li><a href="<c:url value="/register" />"><span
														class="glyphicon glyphicon-log-in"></span>SignUp</a></li>
											</c:if>
										</ul>
									</div>

									<div class="clearfix"></div>
								</div>
							</nav>
						</div>
					</div>

					<div class="clearfix"></div>
				</div>
				<!-- banner-text -->
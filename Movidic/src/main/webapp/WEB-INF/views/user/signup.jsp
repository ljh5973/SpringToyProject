<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Anime | Template</title>



</head>


<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>



	<!-- Normal Breadcrumb Begin -->
	<section class="normal-breadcrumb set-bg"
		data-setbg="img/normal-breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="normal__breadcrumb__text">
						<h2>Sign Up</h2>
						<p>Welcome to the official Anime blog.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Normal Breadcrumb End -->

	<!-- Signup Section Begin -->
	<section class="signup spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login__form">
						<h3>Sign Up</h3>
						<form id="registerForm" action="register" method="POST">
							<div class="input__item">
								<input type="text" id="email" placeholder="Email address" name="email" autofocus="autofocus">
								
								<span class="icon_mail"></span>
							</div>
							
							<div class="input__item">
								<input type="text" placeholder="Your Name" name="name" id="name">
								<span class="icon_profile"></span>
							</div>
							<div class="input__item">
								<input type="password" placeholder="Password" name="pw" id="pw"> <span
									class="icon_lock"></span>
							</div>
							<button type="submit" class="site-btn">Register</button>
						</form>
						<h5>
							Already have an account? <a href="../user/login">Log In!</a>
						</h5>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login__social__links">
						<h3>Login With:</h3>
						<ul>
							<li><a href="#" class="facebook"><i
									class="fa fa-facebook"></i> Sign in With Facebook</a></li>
							<li><a href="#" class="google"><i class="fa fa-google"></i>
									Sign in With Google</a></li>
							<li><a href="#" class="kakao"><i class="fa fa-twitter"></i>
									Sign in With Kakao</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Signup Section End -->



	<!-- Search model Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">
				<i class="icon_close"></i>
			</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->


</body>
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/register.js"> </script>

</html>
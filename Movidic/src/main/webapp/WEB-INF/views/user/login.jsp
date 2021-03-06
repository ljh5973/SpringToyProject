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
						<h2>Login</h2>
						<p>Welcome to the official Anime blog.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Normal Breadcrumb End -->

	<!-- Login Section Begin -->
	<section class="login spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login__form">
						<h3>Login</h3>
						<form action="loginCheck" method="POST">
							<div class="input__item">
								<input type="text" placeholder="Email address" name="email">
								<span class="icon_mail"></span>
							</div>
							<div class="input__item">
								<input type="text" placeholder="Password" name="pw"> <span
									class="icon_lock"></span>
							</div>
							<!-- 로그인 유지 -->
							<div class="form-group">
<!-- 								<div class="custom-control custom-checkbox small">
									<label style="color: white;" > <input  type="checkbox" name="useCookie">
										로그인유지
									</label>
								</div> -->
							</div>

							<button type="submit" class="site-btn">Login Now</button>
						</form>


						<a href="#" class="forget_pass">Forgot Your Password?</a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login__register">
						<h3>Dont’t Have An Account?</h3>
						<a href="../user/signup" class="primary-btn">Register Now</a>
					</div>
				</div>
			</div>
			<div class="login__social">
				<div class="row d-flex justify-content-center">
					<div class="col-lg-6">
						<div class="login__social__links">
							<span>or</span>
							<ul>
								<li><a href="#" class="facebook"><i
										class="fa fa-facebook"></i> Sign in With Facebook</a></li>
								<li><a href="#" class="google"><i class="fa fa-google"></i>
										Sign in With Google</a></li>
								<li><a href="#" class="twitter"><i
										class="fa fa-twitter"></i> Sign in With Twitter</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Login Section End -->

	<!-- Footer Section Begin -->

	<!-- Footer Section End -->

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

	<script>
		
		var msg = "${msg}";
		console.log(msg);
		if (msg != "") {
			alert(msg);
		}
	</script>

</html>
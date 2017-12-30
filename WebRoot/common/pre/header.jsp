<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'header.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="textcss" href="styles.css">
	-->
<!-- all css here -->
<!-- 验证样式 -->
<link rel="stylesheet" href="css/myCss/register.css">
<link rel="icon" href="img/favicon.png" />
<!-- bootstrap.min.css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- font-awesome.min.css -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- owl.carousel.css -->
<link rel="stylesheet" href="css/owl.carousel.css">
<!-- owl.carousel.css -->
<link rel="stylesheet" href="css/meanmenu.min.css">
<!-- shortcode/shortcodes.css -->
<link rel="stylesheet" href="css/shortcode/shortcodes.css">
<!-- nivo-slider.css -->
<link rel="stylesheet" href="css/nivo-slider.css">
<!-- style.css -->
<link rel="stylesheet" href="style.css">
<!-- responsive.css -->
<link rel="stylesheet" href="css/responsive.css">
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
	<!-- header-top-area-start -->
	<div class="header-top-area black-bg ptb-7 hidden-xs">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-4">
					<div class="header-top-left">
						<span><a href="#">服务热线:</a>(+86)185-3580-9768</span>
					</div>
				</div>
				<div class="col-lg-9 col-md-9 col-sm-8">
					<div class="header-top-right">
						<ul>
							<li class="slide-toggle"><a href="${loginUrl }"><i
									class="fa fa-user"></i> ${userName} </a>
								<ul class="show-toggle">
									<li><a href="login.jsp">登录</a>
									</li>
									<li><a href="register.jsp">注册</a>
									</li>
								</ul></li>
						</ul>
						<ul>
							<li><a href="#"><i class="fa fa-check"></i> 结算</a>
							</li>
						</ul>
						<ul>
							<li class="slide-toggle-2 text-uppercase"><a href="#"><i
									class="fa fa-usd"></i>USD</a>
								<ul class="show-toggle-2">
									<li><a href="#"><i class="fa fa-eur"></i> EUR</a>
									</li>
									<li><a href="#"><i class="fa fa-gbp"></i> GBP</a>
									</li>
									<li><a href="#"><i class="fa fa-usd"></i> USD</a>
									</li>
								</ul></li>
						</ul>
						<ul>
							<li class="slide-toggle-3 text-uppercase"><a href="#">fr-ca</a>
								<ul class="show-toggle-3">
									<li><a href="#">en-gb</a>
									</li>
									<li><a href="#">fr-ca</a>
									</li>
								</ul></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- header-top-area-end -->
</body>
</html>

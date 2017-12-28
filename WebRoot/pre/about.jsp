<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 头部导入 -->
<%@include file="../common/pre/headerUp.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'about.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="icon" href="img/favicon.png" />
<!-- Place favicon.ico in the root directory -->

<!-- all css here -->
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
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!-- Add your site or application content here -->
	<!-- breadcrumb start -->
	<div class="breadcrumb-area">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index.html"><i class="fa fa-home"></i> 首页</a>
				</li>
				<li class="active">联系我们</li>
			</ol>
		</div>
	</div>
	<!-- breadcrumb end -->
	<!-- about-us-area-start -->
	<div class="about-us-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="about-us-page">
						<div class="about-content">
							<p>Have a cool story about how your product or service was
								helps change lives? Put it on your 'About Us' page. Good stories
								humanize your brand and provide context and meaning for your
								product. What's more, good stories are sticky -- which means
								people are more likely to connect with them and pass them on.</p>
						</div>
						<div class="about-content">
							<p>Yellow Leaf Hammocks does an amazing job of telling you
								about its product by describing how the hammocks empower artisan
								weavers and their families. The company uses acombination of
								words and easily digestible graphics to paint a picture, rather
								than using big chunks of text. They're clear about why they're
								different: "Not a Charity," the page reads. And then: "This is
								the basis for a brighter future, built on a hand up, not a
								handout."</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- about-us-area-end -->



</body>
<!-- 底部导入 -->
<%@include file="../common/pre/footer.jsp"%>
<!-- all js here -->
<!-- jquery-1.12.0 -->
<script src="js/vendor/jquery-1.12.4.js"></script>
<!-- bootstrap.min.js -->
<script src="js/bootstrap.min.js"></script>
<!-- nivo.slider.js -->
<script src="js/jquery.nivo.slider.pack.js"></script>
<!-- jquery-ui.min.js -->
<script src="js/jquery-ui.min.js"></script>
<!-- jquery.magnific-popup.min.js -->
<script src="js/jquery.magnific-popup.min.js"></script>
<!-- jquery.meanmenu.min.js -->
<script src="js/jquery.meanmenu.js"></script>
<!-- jquery.scrollup.min.js-->
<script src="js/jquery.scrollup.min.js"></script>
<!-- owl.carousel.min.js -->
<script src="js/owl.carousel.min.js"></script>
<!-- plugins.js -->
<script src="js/plugins.js"></script>
<!-- main.js -->
<script src="js/main.js"></script>
</html>

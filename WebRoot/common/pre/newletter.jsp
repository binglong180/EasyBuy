<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'newletter.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<!-- newletter-area-start -->
	<div class="newletter-area ptb-30">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="newletter-logo">
						<a href="#"><img src="${url}/statics/img/logo.png" alt="" />
						</a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="subscribe-form">
						<form action="#">
							<input placeholder="Email address..." type="text">
							<button class="subscribe">Subscribe</button>
						</form>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="subscribe-social text-right">
						<a href="#"><i class="fa fa-youtube"></i> </a> <a href="#"><i
							class="fa fa-facebook"></i> </a> <a href="#"><i
							class="fa fa-google-plus"></i> </a> <a href="#"><i
							class="fa fa-twitter"></i> </a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- newletter-area-end -->
</body>
</html>

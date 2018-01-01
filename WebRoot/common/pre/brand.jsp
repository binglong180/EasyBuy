<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'brand.jsp' starting page</title>
    
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
  <!-- brand-area-start -->
	<div class="brand-area pb-60 dotted-style-2">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h3>Logo Brands & Clients</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="brand-active border-1">
						<div class="single-brand">
							<a href="#"><img src="${url}/statics/img/brand/1.jpg" alt="" /> </a>
						</div>
						<div class="single-brand">
							<a href="#"><img src="${url}/statics/img/brand/2.jpg" alt="" /> </a>
						</div>
						<div class="single-brand">
							<a href="#"><img src="${url}/statics/img/brand/3.jpg" alt="" /> </a>
						</div>
						<div class="single-brand">
							<a href="#"><img src="${url}/statics/img/brand/4.jpg" alt="" /> </a>
						</div>
						<div class="single-brand">
							<a href="#"><img src="${url}/statics/img/brand/5.jpg" alt="" /> </a>
						</div>
						<div class="single-brand">
							<a href="#"><img src="${url}/statics/img/brand/6.jpg" alt="" /> </a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- brand-area-end -->
  </body>
</html>

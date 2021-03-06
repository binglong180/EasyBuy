<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.niu.bean.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/pre/";
%>
<%@include file="../common/pre/headerDown.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'index.jsp' starting page</title>
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
	<!-- slider-area-start -->
	<div class="slider-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 hidden-sm hidden-xs"></div>
				<div class="col-lg-6 col-md-6 col-sm-12">
					<div class="main-slider">
						<div class="slider-container">
							<!-- Slider Image -->
							<div id="mainSlider" class="nivoSlider slider-image">
								<img src="img/slider/1.jpg" alt="" title="#htmlcaption1">
								<img src="img/slider/2.jpg" alt="" title="#htmlcaption2">
							</div>
						</div>
					</div>
					<div class="slider-product dotted-style-1 pt-30">
						<div class="slider-product-active">
							<div class="single-product single-product-sidebar white-bg">
								<div class="product-img product-img-left">
									<a href="#"><img src="img/product/6.jpg" alt="" /> </a>
								</div>
								<div class="product-content product-content-right">
									<div class="pro-title">
										<h4>
											<a href="product-details.html">Lounge Chair</a>
										</h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star-o"></i> </a>
									</div>
									<div class="price-box">
										<span class="price product-price">$444.00</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to
												Cart</a>
										</div>
									</div>
								</div>
							</div>
							<div class="single-product single-product-sidebar white-bg">
								<div class="product-img product-img-left">
									<a href="#"><img src="img/product/9.jpg" alt="" /> </a>
								</div>
								<div class="product-content product-content-right">
									<div class="pro-title">
										<h4>
											<a href="product-details.html">imac</a>
										</h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star-o"></i> </a>
									</div>
									<div class="price-box">
										<span class="price product-price">$300.00</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to
												Cart</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="slider-sidebar">
						<div class="slider-single-img mb-20">
							<a href="#"> <img class="img_a" src="img/menu-l/1-1.jpg"
								alt="" /> <img class="img_b" src="img/menu-l/1-1.jpg" alt="" />
							</a>
						</div>
						<div class="slider-single-img none-sm">
							<a href="#"> <img class="img_a" src="img/menu-l/1-2.jpg"
								alt="" /> <img class="img_b" src="img/menu-l/1-2.jpg" alt="" />
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider-area-end -->
	<!-- electronic-tab-area-start -->
	<div class="electronic-tab-area pt-60 pb-60">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="tab-title">
						<h2>Electronics</h2>
					</div>
					<div class="tab-menu">
						<ul>
							<li class="active"><a href="#home" data-toggle="tab"><img
									src="img/electronic/1.png" alt="" />Electronics </a></li>
							<li><a href="#profile" data-toggle="tab"><img
									src="img/electronic/2.png" alt="" />Cameras & Photo</a></li>
							<li><a href="#messages" data-toggle="tab"><img
									src="img/electronic/3.png" alt="" />Sports & Outdoors</a></li>
							<li><a href="#settings" data-toggle="tab"><img
									src="img/electronic/4.png" alt="" />Health & Beauty</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="tab-content tab-content-item">
				<div class="tab-pane active" id="home">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 pad">
							<div class="single-tab-img">
								<a href="#"><img src="img/electronic/1.jpg" alt="" /> </a>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6  col-xs-12 pad">
							<div class="single-product pt-30 pb-20 white-bg">
								<div class="product-img pb-40">
									<a href="#"><img src="img/product/1.jpg" alt="" /> </a>
								</div>
								<div class="product-content">
									<div class="pro-title">
										<h4>
											<a href="product-details.html">Moebius Table</a>
										</h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star-o"></i> </a>
									</div>
									<div class="price-box">
										<span class="price product-price">$262.00</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to
												Cart</a>
										</div>
										<div class="product-icon-right floatright">
											<a href="#" data-toggle="tooltip" title="Compare"><i
												class="fa fa-exchange"></i> </a> <a href="#"
												data-toggle="tooltip" title="Wishlist"><i
												class="fa fa-heart"></i> </a>
										</div>
									</div>
								</div>
								<span class="new">new</span>
							</div>
						</div>
						<div
							class="col-lg-4 col-md-4 padd-2 col-sm-12  col-xs-12 dotted-style-1">
							<div class="tab-product-active">
								<div class="together-single-product">
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/2.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">Lounge Chair Cinema </a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star-o"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$210.00</span> <span
													class="price-2"><del>$230.00</del> </span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="new">new</span>
									</div>
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/3.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">iPhone</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$100.00</span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="sale">sale</span>
									</div>
								</div>
								<div class="together-single-product">
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/4.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">iMac</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star-o"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$120.00</span> <span
													class="price-2"><del>$300.00</del> </span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
									</div>
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/5.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">Footstool</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$70.00</span> <span
													class="price-2"><del>$100.00</del> </span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="new">new</span>
									</div>
								</div>
								<div class="together-single-product">
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/6.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">Lounge Chair Cinema </a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star-o"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$300.00</span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="sale">sale</span>
									</div>
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/7.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">iPhone</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$100.00</span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="sale">sale</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="profile">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 pad">
							<div class="single-tab-img">
								<a href="#"><img src="img/electronic/1.jpg" alt="" /> </a>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 pad">
							<div class="single-product pt-30 pb-20 white-bg">
								<div class="product-img pb-40">
									<a href="#"><img src="img/product/3.jpg" alt="" /> </a>
								</div>
								<div class="product-content">
									<div class="pro-title">
										<h4>
											<a href="product-details.html">Moebius Table</a>
										</h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star-o"></i> </a>
									</div>
									<div class="price-box">
										<span class="price product-price">$262.00</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to
												Cart</a>
										</div>
										<div class="product-icon-right floatright">
											<a href="#" data-toggle="tooltip" title="Compare"><i
												class="fa fa-exchange"></i> </a> <a href="#"
												data-toggle="tooltip" title="Wishlist"><i
												class="fa fa-heart"></i> </a>
										</div>
									</div>
								</div>
								<span class="new">new</span>
							</div>
						</div>
						<div
							class="col-lg-4 col-md-4 padd-2 col-sm-12 col-xs-12 dotted-style-1">
							<div class="tab-product-active">
								<div class="together-single-product">
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/7.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">MacBook</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$290.00</span> <span
													class="price-2"><del>$330.00</del> </span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="new">new</span>
									</div>
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/3.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">iPhone</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$100.00</span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="sale">sale</span>
									</div>
								</div>
								<div class="together-single-product">
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/10.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">Loudspeaker</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$120.00</span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
									</div>
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/5.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">Footstool</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$70.00</span> <span
													class="price-2"><del>$100.00</del> </span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="new">new</span>
									</div>
								</div>
								<div class="together-single-product">
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/6.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">Lounge Chair Cinema </a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star-o"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$300.00</span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="sale">sale</span>
									</div>
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/7.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">iPhone</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$100.00</span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="sale">sale</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="messages">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 pad">
							<div class="single-tab-img">
								<a href="#"><img src="img/electronic/1.jpg" alt="" /> </a>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 pad">
							<div class="single-product pt-30 pb-20 white-bg">
								<div class="product-img pb-40">
									<a href="#"><img src="img/product/5.jpg" alt="" /> </a>
								</div>
								<div class="product-content">
									<div class="pro-title">
										<h4>
											<a href="product-details.html">Moebius Table</a>
										</h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star-o"></i> </a>
									</div>
									<div class="price-box">
										<span class="price product-price">$262.00</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to
												Cart</a>
										</div>
										<div class="product-icon-right floatright">
											<a href="#" data-toggle="tooltip" title="Compare"><i
												class="fa fa-exchange"></i> </a> <a href="#"
												data-toggle="tooltip" title="Wishlist"><i
												class="fa fa-heart"></i> </a>
										</div>
									</div>
								</div>
								<span class="new">new</span>
							</div>
						</div>
						<div
							class="col-lg-4 col-md-4 padd-2 col-sm-12 col-xs-12 dotted-style-1">
							<div class="tab-product-active">
								<div class="together-single-product">
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/11.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">Samsung Y8</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star-o"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$210.00</span> <span
													class="price-2"><del>$230.00</del> </span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="new">new</span>
									</div>
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/3.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">iPhone</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$100.00</span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="sale">sale</span>
									</div>
								</div>
								<div class="together-single-product">
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/4.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">iMac</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star-o"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$120.00</span> <span
													class="price-2"><del>$300.00</del> </span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
									</div>
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/5.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">Footstool</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$70.00</span> <span
													class="price-2"><del>$100.00</del> </span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="new">new</span>
									</div>
								</div>
								<div class="together-single-product">
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/6.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">Lounge Chair Cinema </a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star-o"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$300.00</span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="sale">sale</span>
									</div>
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/7.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">iPhone</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$100.00</span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="sale">sale</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="settings">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 pad">
							<div class="single-tab-img">
								<a href="#"><img src="img/electronic/1.jpg" alt="" /> </a>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 pad">
							<div class="single-product pt-30 pb-20 white-bg">
								<div class="product-img pb-40">
									<a href="#"><img src="img/product/3.jpg" alt="" /> </a>
								</div>
								<div class="product-content">
									<div class="pro-title">
										<h4>
											<a href="product-details.html">Moebius Table</a>
										</h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star-o"></i> </a>
									</div>
									<div class="price-box">
										<span class="price product-price">$262.00</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to
												Cart</a>
										</div>
										<div class="product-icon-right floatright">
											<a href="#" data-toggle="tooltip" title="Compare"><i
												class="fa fa-exchange"></i> </a> <a href="#"
												data-toggle="tooltip" title="Wishlist"><i
												class="fa fa-heart"></i> </a>
										</div>
									</div>
								</div>
								<span class="new">new</span>
							</div>
						</div>
						<div
							class="col-lg-4 col-md-4 padd-2 col-sm-12 col-xs-12 dotted-style-1">
							<div class="tab-product-active">
								<div class="together-single-product">
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/2.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">Lounge Chair Cinema </a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star-o"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$210.00</span> <span
													class="price-2"><del>$230.00</del> </span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="new">new</span>
									</div>
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/3.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">iPhone</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$100.00</span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="sale">sale</span>
									</div>
								</div>
								<div class="together-single-product">
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/4.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">iMac</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star-o"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$120.00</span> <span
													class="price-2"><del>$300.00</del> </span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
									</div>
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/5.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">Footstool</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$70.00</span> <span
													class="price-2"><del>$100.00</del> </span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="new">new</span>
									</div>
								</div>
								<div class="together-single-product">
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/6.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">Lounge Chair Cinema </a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star-o"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$300.00</span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="sale">sale</span>
									</div>
									<div class="single-product white-bg">
										<div class="product-img product-container-img">
											<a href="#"><img src="img/product/7.jpg" alt="" /> </a>
										</div>
										<div class="product-content product-i">
											<div class="pro-title">
												<h4>
													<a href="product-details.html">iPhone</a>
												</h4>
											</div>
											<div class="pro-rating ">
												<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a> <a href="#"><i
													class="fa fa-star"></i> </a>
											</div>
											<div class="price-box">
												<span class="price product-price">$100.00</span>
											</div>
											<div class="product-icon">
												<div class="product-icon-left f-left">
													<a href="#"><i class="fa fa-shopping-cart"></i>Add to
														Cart</a>
												</div>
												<div class="product-icon-right floatright">
													<a href="#" data-toggle="tooltip" title="Compare"><i
														class="fa fa-exchange"></i> </a> <a href="#"
														data-toggle="tooltip" title="Wishlist"><i
														class="fa fa-heart"></i> </a>
												</div>
											</div>
										</div>
										<span class="sale">sale</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- electronic-tab-area-end -->
	<!-- all-product-area-start -->
	<div class="all-product-area pb-60">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<!-- bestseller-area -->
					<div class="bestseller-area dotted-style-2">
						<div class="section-title">
							<h3>Bestseller</h3>
						</div>
						<div class="single-product-items-active border-1">
							<div class="single-product-items">
								<div class="single-product single-product-sidebar white-bg">
									<div class="product-img product-img-left">
										<a href="#"><img src="img/product/6.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-content-right">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">Lounge Chair</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star-o"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$300.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="single-product single-product-sidebar white-bg">
									<div class="product-img product-img-left">
										<a href="#"><img src="img/product/14.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-content-right">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">Samsung G941BW</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$230.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="single-product single-product-sidebar white-bg">
									<div class="product-img product-img-left">
										<a href="#"><img src="img/product/13.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-content-right">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">power banks</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$100.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="single-product single-product-sidebar white-bg">
									<div class="product-img product-img-left">
										<a href="#"><img src="img/product/3.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-content-right">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">iPhone</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$201.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="single-product single-product-sidebar white-bg">
									<div class="product-img product-img-left">
										<a href="#"><img src="img/product/7.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-content-right">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">MacBook Pro</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$700.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="single-product-items">
								<div class="single-product single-product-sidebar white-bg">
									<div class="product-img product-img-left">
										<a href="#"><img src="img/product/6.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-content-right">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">Lounge Chair</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star-o"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$300.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="single-product single-product-sidebar white-bg">
									<div class="product-img product-img-left">
										<a href="#"><img src="img/product/14.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-content-right">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">Samsung G941BW</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$230.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="single-product single-product-sidebar white-bg">
									<div class="product-img product-img-left">
										<a href="#"><img src="img/product/13.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-content-right">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">power banks</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$100.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="single-product single-product-sidebar white-bg">
									<div class="product-img product-img-left">
										<a href="#"><img src="img/product/3.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-content-right">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">iPhone</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$201.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="single-product single-product-sidebar white-bg">
									<div class="product-img product-img-left">
										<a href="#"><img src="img/product/7.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-content-right">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">MacBook Pro</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$700.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- special-products-area -->
					<div class="special-products-area dotted-style-2 ptb-50">
						<div class="section-title">
							<h3>special-products</h3>
						</div>
						<div class="special-products-active border-1">
							<div class="single-product white-bg">
								<div class="product-img">
									<a href="#"><img src="img/product/2.jpg" alt="" /> </a>
								</div>
								<div class="product-content">
									<div class="pro-title">
										<h4>
											<a href="product-details.html">Lounge Chair Cinema</a>
										</h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star-o"></i> </a>
									</div>
									<div class="price-box">
										<span class="price product-price">$262.00</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to
												Cart</a>
										</div>
										<div class="product-icon-right floatright">
											<a href="#" data-toggle="tooltip" title="Compare"><i
												class="fa fa-exchange"></i> </a> <a href="#"
												data-toggle="tooltip" title="Wishlist"><i
												class="fa fa-heart"></i> </a>
										</div>
									</div>
								</div>
							</div>
							<div class="single-product white-bg">
								<div class="product-img">
									<a href="#"><img src="img/product/5.jpg" alt="" /> </a>
								</div>
								<div class="product-content">
									<div class="pro-title">
										<h4>
											<a href="product-details.html">Footstool</a>
										</h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star-o"></i> </a>
									</div>
									<div class="price-box">
										<span class="price product-price">$150.00</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to
												Cart</a>
										</div>
										<div class="product-icon-right floatright">
											<a href="#" data-toggle="tooltip" title="Compare"><i
												class="fa fa-exchange"></i> </a> <a href="#"
												data-toggle="tooltip" title="Wishlist"><i
												class="fa fa-heart"></i> </a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- client-area-start  -->
					<div class="client-area dotted-style-2">
						<div class="section-title">
							<h3>client says</h3>
						</div>
						<div class="clinet-active border-1">
							<div class="single-client fix white-bg">
								<div class="client-content">
									<a href="#"><p>Praesent dapibus, neque id cursus
											faucibus, tortor neque egestas augue, eu vulputate magna eros
											eu erat. Aliquam erat volutpat. ...</p> </a>
								</div>
								<div class="clint-img">
									<div class="client-img-left">
										<img src="img/client/1.jpg" alt="" />
									</div>
									<div class="client-name">
										<span>Mr Test</span>
									</div>
								</div>
							</div>
							<div class="single-client fix white-bg">
								<div class="client-content">
									<a href="#"><p>Praesent dapibus, neque id cursus
											faucibus, tortor neque egestas augue, eu vulputate magna eros
											eu erat. Aliquam erat volutpat. ...</p> </a>
								</div>
								<div class="clint-img">
									<div class="client-img-left">
										<img src="img/client/2.jpg" alt="" />
									</div>
									<div class="client-name">
										<span>Mrs Brown</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<!-- feature-product-area -->
					<div class="feature-product-area dotted-style-2">
						<div class="section-title">
							<h3>Featured products</h3>
						</div>
						<div class="feature-product-active border-1">
							<div class="single-product  white-bg">
								<div class="product-img pt-20">
									<a href="#"><img src="img/product/1.jpg" alt="" /> </a>
								</div>
								<div class="product-content product-i">
									<div class="pro-title">
										<h4>
											<a href="product-details.html">Moebius Table</a>
										</h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star-o"></i> </a>
									</div>
									<div class="price-box">
										<span class="price product-price">$262.00</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to
												Cart</a>
										</div>
										<div class="product-icon-right floatright">
											<a href="#" data-toggle="tooltip" title="Compare"><i
												class="fa fa-exchange"></i> </a> <a href="#"
												data-toggle="tooltip" title="Wishlist"><i
												class="fa fa-heart"></i> </a>
										</div>
									</div>
								</div>
								<span class="new">new</span>
							</div>
							<div class="single-product  white-bg">
								<div class="product-img pt-20">
									<a href="#"><img src="img/product/6.jpg" alt="" /> </a>
								</div>
								<div class="product-content product-i">
									<div class="pro-title">
										<h4>
											<a href="product-details.html">Como Ottoman</a>
										</h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star-o"></i> </a>
									</div>
									<div class="price-box">
										<span class="price product-price">$111.00</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to
												Cart</a>
										</div>
										<div class="product-icon-right floatright">
											<a href="#" data-toggle="tooltip" title="Compare"><i
												class="fa fa-exchange"></i> </a> <a href="#"
												data-toggle="tooltip" title="Wishlist"><i
												class="fa fa-heart"></i> </a>
										</div>
									</div>
								</div>
							</div>
							<div class="single-product  white-bg">
								<div class="product-img pt-20">
									<a href="#"><img src="img/product/4.jpg" alt="" /> </a>
								</div>
								<div class="product-content product-i">
									<div class="pro-title">
										<h4>
											<a href="product-details.html">iMac</a>
										</h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star-o"></i> </a>
									</div>
									<div class="price-box">
										<span class="price product-price">$333.00</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to
												Cart</a>
										</div>
										<div class="product-icon-right floatright">
											<a href="#" data-toggle="tooltip" title="Compare"><i
												class="fa fa-exchange"></i> </a> <a href="#"
												data-toggle="tooltip" title="Wishlist"><i
												class="fa fa-heart"></i> </a>
										</div>
									</div>
								</div>
								<span class="new">new</span>
							</div>
							<div class="single-product  white-bg">
								<div class="product-img pt-20">
									<a href="#"><img src="img/product/15.jpg" alt="" /> </a>
								</div>
								<div class="product-content product-i">
									<div class="pro-title">
										<h4>
											<a href="product-details.html">Palm Treo Pro</a>
										</h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star"></i> </a> <a href="#"><i
											class="fa fa-star-o"></i> </a>
									</div>
									<div class="price-box">
										<span class="price product-price">$140.00</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to
												Cart</a>
										</div>
										<div class="product-icon-right floatright">
											<a href="#" data-toggle="tooltip" title="Compare"><i
												class="fa fa-exchange"></i> </a> <a href="#"
												data-toggle="tooltip" title="Wishlist"><i
												class="fa fa-heart"></i> </a>
										</div>
									</div>
								</div>
								<span class="sale">sale</span>
							</div>
						</div>
					</div>
					<!-- banner-area -->
					<div class="banner-area ptb-40">
						<div class="slider-single-img res">
							<a href="#"> <img class="img_a" src="img/banner/1.jpg" alt="" />
								<img class="img_b" src="img/banner/1.jpg" alt="" /> </a>
						</div>
					</div>
					<!-- new-product-area -->
					<div class="new-product-area dotted-style-2">
						<div class="section-title">
							<h3>New Products</h3>
						</div>
						<div class="new-product-active border-1">
							<div class="new-product-items">
								<div class="single-product  white-bg">
									<div class="product-img pt-20">
										<a href="#"><img src="img/product/1.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">Moebius Table</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star-o"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$400.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i
													class="fa fa-exchange"></i> </a> <a href="#"
													data-toggle="tooltip" title="Wishlist"><i
													class="fa fa-heart"></i> </a>
											</div>
										</div>
									</div>
									<span class="new">new</span>
								</div>
								<div class="single-product  white-bg">
									<div class="product-img pt-20">
										<a href="#"><img src="img/product/7.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">MacBook Pro</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star-o"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$140.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i
													class="fa fa-exchange"></i> </a> <a href="#"
													data-toggle="tooltip" title="Wishlist"><i
													class="fa fa-heart"></i> </a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="new-product-items">
								<div class="single-product  white-bg">
									<div class="product-img pt-20">
										<a href="#"><img src="img/product/11.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">Samsung Y8</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star-o"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$262.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i
													class="fa fa-exchange"></i> </a> <a href="#"
													data-toggle="tooltip" title="Wishlist"><i
													class="fa fa-heart"></i> </a>
											</div>
										</div>
									</div>
								</div>
								<div class="single-product  white-bg">
									<div class="product-img pt-20">
										<a href="#"><img src="img/product/16.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">MacBook Air</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star-o"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$120.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i
													class="fa fa-exchange"></i> </a> <a href="#"
													data-toggle="tooltip" title="Wishlist"><i
													class="fa fa-heart"></i> </a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="new-product-items">
								<div class="single-product  white-bg">
									<div class="product-img pt-20">
										<a href="#"><img src="img/product/17.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">MacBook</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star-o"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$410.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i
													class="fa fa-exchange"></i> </a> <a href="#"
													data-toggle="tooltip" title="Wishlist"><i
													class="fa fa-heart"></i> </a>
											</div>
										</div>
									</div>
									<span class="new">new</span>
								</div>
								<div class="single-product  white-bg">
									<div class="product-img pt-20">
										<a href="#"><img src="img/product/6.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">Como Ottoman</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star-o"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$111.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i
													class="fa fa-exchange"></i> </a> <a href="#"
													data-toggle="tooltip" title="Wishlist"><i
													class="fa fa-heart"></i> </a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="new-product-items">
								<div class="single-product  white-bg">
									<div class="product-img pt-20">
										<a href="#"><img src="img/product/7.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">MacBook</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star-o"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$331.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i
													class="fa fa-exchange"></i> </a> <a href="#"
													data-toggle="tooltip" title="Wishlist"><i
													class="fa fa-heart"></i> </a>
											</div>
										</div>
									</div>
									<span class="new">new</span>
								</div>
								<div class="single-product  white-bg">
									<div class="product-img pt-20">
										<a href="#"><img src="img/product/2.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">Lounge Chair Cinema</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star-o"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$111.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i
													class="fa fa-exchange"></i> </a> <a href="#"
													data-toggle="tooltip" title="Wishlist"><i
													class="fa fa-heart"></i> </a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="new-product-items">
								<div class="single-product  white-bg">
									<div class="product-img pt-20">
										<a href="#"><img src="img/product/1.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">Moebius Table</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star-o"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$262.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i
													class="fa fa-exchange"></i> </a> <a href="#"
													data-toggle="tooltip" title="Wishlist"><i
													class="fa fa-heart"></i> </a>
											</div>
										</div>
									</div>
									<span class="new">new</span>
								</div>
								<div class="single-product  white-bg">
									<div class="product-img pt-20">
										<a href="#"><img src="img/product/6.jpg" alt="" /> </a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4>
												<a href="product-details.html">Como Ottoman</a>
											</h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star"></i> </a> <a href="#"><i
												class="fa fa-star-o"></i> </a>
										</div>
										<div class="price-box">
											<span class="price product-price">$111.00</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to
													Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i
													class="fa fa-exchange"></i> </a> <a href="#"
													data-toggle="tooltip" title="Wishlist"><i
													class="fa fa-heart"></i> </a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- banner-area-start -->
					<div class="banner-area pt-40">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
								<div class="slider-single-img res">
									<a href="#"> <img class="img_a" src="img/banner/2.jpg"
										alt="" /> <img class="img_b" src="img/banner/2.jpg" alt="" />
									</a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
								<div class="slider-single-img">
									<a href="#"> <img class="img_a" src="img/banner/3.jpg"
										alt="" /> <img class="img_b" src="img/banner/3.jpg" alt="" />
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- all-product-area-end -->
	


	
</body>
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

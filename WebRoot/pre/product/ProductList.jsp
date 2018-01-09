<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.niu.bean.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>商品展示搜索</title>

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
	<%@include file="../../common/pre/header.jsp"%>
	<div id="secrch">
		<%@include file="../../common/pre/search.jsp"%>
	</div>
	<%@include file="../../common/pre/menuUp.jsp"%>
	<!-- *************************************************************************** -->
	<!-- 商品搜索展示开始 -->
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!-- Add your site or application content here -->

	<!-- breadcrumb start -->
	<div class="breadcrumb-area">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${url}/pre/index.jsp"><i class="fa fa-home"></i>
						首页</a>
				</li>
				<li class="active">商城</li>
			</ol>
		</div>
	</div>
	<!-- breadcrumb end -->

	<!-- 商品展示 -->

	<!-- shop-area start -->
	<div class="shop-area">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-4">
					<div class="column mt-55">
						<h2 class="title-block">Catalog</h2>
						<div class="sidebar-widget">
							<h3 class="sidebar-title">Availability</h3>
							<ul class="sidebar-menu">
								<li><a href="#">In stock <span>(13)</span> </a></li>
								<li><a href="#">In stock <span>(13)</span> </a></li>
							</ul>
						</div>
						<div class="sidebar-widget">
							<h3 class="sidebar-title">Condition</h3>
							<ul class="sidebar-menu">
								<li><a href="#">New <span>(11)</span> </a></li>
							</ul>
						</div>
						<div class="sidebar-widget">
							<h3 class="sidebar-title">Manufacturer</h3>
							<ul class="sidebar-menu">
								<li><a href="#"> Fashion Manufacturer <span>(13)</span>
								</a></li>
							</ul>
						</div>
						<div class="sidebar-widget">
							<h3 class="sidebar-title">Manufacturer</h3>
							<div class="price-filter">
								<p>
									<label for="amount">Range:</label> <input type="text"
										id="amount" readonly
										style="border:0; color:#f6931f; font-weight:bold;">
								</p>
								<div id="slider-range"></div>
							</div>
						</div>
						<div class="sidebar-widget">
							<h3 class="sidebar-title">Size</h3>
							<ul class="sidebar-menu">
								<li><a href="#"> S <span>(13)</span> </a></li>
								<li><a href="#"> M <span>(15)</span> </a></li>
								<li><a href="#"> L <span>(6)</span> </a></li>
							</ul>
						</div>
						<div class="sidebar-widget">
							<h3 class="sidebar-title">Size</h3>
							<ul class="sidebar-menu">
								<li><a href="#"> Beige <span>(2)</span> </a></li>
								<li><a href="#"> White <span>(4)</span> </a></li>
								<li><a href="#"> Black <span>(4)</span> </a></li>
								<li><a href="#"> Orange <span>(6)</span> </a></li>
								<li><a href="#"> Blue <span>(4)</span> </a></li>
								<li><a href="#"> Green <span>(1)</span> </a></li>
								<li><a href="#"> Yellow <span>(5)</span> </a></li>
								<li><a href="#"> Pink <span>(2)</span> </a></li>
							</ul>
						</div>
						<div class="sidebar-widget">
							<h3 class="sidebar-title">Compositions</h3>
							<ul class="sidebar-menu">
								<li><a href="#"> Cotton <span>(2)</span> </a></li>
								<li><a href="#"> Polyester <span>(4)</span> </a></li>
								<li><a href="#"> Viscose <span>(4)</span> </a></li>
							</ul>
						</div>
						<div class="sidebar-widget">
							<h3 class="sidebar-title">Styles</h3>
							<ul class="sidebar-menu">
								<li><a href="#"> Casual <span>(2)</span> </a></li>
								<li><a href="#"> Dressy <span>(4)</span> </a></li>
								<li><a href="#"> Girly <span>(4)</span> </a></li>
							</ul>
						</div>
						<div class="sidebar-widget">
							<h3 class="sidebar-title">Properties</h3>
							<ul class="sidebar-menu">
								<li><a href="#">Colorful Dress <span>(2)</span> </a></li>
								<li><a href="#">Maxi Dress <span>(4)</span> </a></li>
								<li><a href="#">Midi Dress <span>(4)</span> </a></li>
								<li><a href="#">Short Dress <span>(3)</span> </a></li>
								<li><a href="#">Short Sleeve <span>(2)</span> </a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-9 col-sm-8">
					<h2 class="page-heading mt-40">
						<span class="cat-name">Sofa</span> <span class="heading-counter">共有查询到${requsetScope.total}件商品</span>
					</h2>
					<div class="shop-page-bar">
						<div>
							<div class="shop-bar">
								<!-- Nav tabs -->
								<ul class="shop-tab f-left" role="tablist">
									<li role="presentation" class="active"><a href="#home"
										data-toggle="tab"><i class="fa fa-th-large"
											aria-hidden="true"></i> </a></li>
									<li role="presentation"><a href="#profile"
										data-toggle="tab"><i class="fa fa-th-list"
											aria-hidden="true"></i> </a></li>
								</ul>
								<div class="selector-field f-left ml-20 hidden-xs">
									<form action="#">
										<label>排序</label> <select name="select">
											<option value="">默认排序</option>
											<option value="">价格由高到低</option>
											<option value="">价格由低到高</option>
											<option value="">Product Name: A to Z</option>
											<option value="">Product Name: Z to A</option>
											<option value="">In stock</option>
											<option value="">Reference: Lowest first</option>
											<option value="">Reference: Highest first</option>
										</select>
									</form>
								</div>
								<div class="selector-field f-left ml-30 hidden-xs">
									<form action="#">
										<label>Show</label> <select name="select">
											<option value="">12</option>
											<option value="">13</option>
											<option value="">14</option>
										</select>
									</form>
								</div>
								<div class="selector-field f-right ml-30">
									<form action="#">
										<button class="compare">Compare (1)</button>
									</form>
								</div>
							</div>
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="home">
									<%@ include file="ShowProductList.jsp" %>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- shop-area end -->



	<!-- *************************************************************************** -->
	<%@include file="../../common/pre/footer.jsp"%>
</body>
</html>

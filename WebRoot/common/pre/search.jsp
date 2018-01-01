<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title></title>

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
	<!-- ***************************************************************************** -->
	<!-- 获取菜单列表 -->
	<c:if test="${empty productCategoryViewList}">
		<script>
			location.href = "${url}/Home?action=index";
		</script>
	</c:if>
	<!-- ***************************************************************************** -->
	<!-- header-bottom-area-start -->
	<div class="header-bottom-area bg-color-1 ptb-25">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="logo">
						<a href="index.jsp"><img src="${url}/statics/img/logo.png"
							alt="" /> </a>
					</div>
				</div>
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="header-bottom-middle">
						<div class="top-search">
							<span class="tex_top_skype"><i class="fa fa-skype"></i>Skype:
								<span class="">Support.skype</span> </span> <span class="tex_top_email"><i
								class="fa fa-envelope"></i>Email: <span class="">907555993@qq.com</span>
							</span>
						</div>
						<div class="search-box">
							<form action="#">
								<select name="#" id="select">
									<option value="">所有商品分类</option>
									<option value="40">Accessories</option>
									<option value="41">Clothing</option>
								</select> <input type="text" placeholder="电脑">
								<button>
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
					</div>
					<div class="header-bottom-right">
						<div class="left-cart">
							<div class="header-compire">
								<a href="#"><i class="fa fa-heart"></i> 收 藏 0 </a> <a href="#"><i
									class="fa fa-refresh"></i> 比 价 0 </a>
							</div>
						</div>
						<div class="shop-cart-area">
							<div class="top-cart-wrapper">
								<div class="block-cart">
									<div class="top-cart-title">
										<a href="#"> <span class="title-cart"> 购 物 车</span> <span
											class="count-item">2 items</span> <span class="price">$444.00</span>
										</a>
									</div>
									<div class="top-cart-content">
										<ol class="mini-products-list">
											<!-- single item -->
											<li><a class="product-image" href="product-details.html">
													<img alt="" src="${url}/statics/img/cart/1.jpg"> </a>
												<div class="product-details">
													<p class="cartproduct-name">
														<a href="product-details.html">Pellentesque habitant </a>
													</p>
													<strong class="qty">qty:1</strong> <span class="sig-price">$222.00</span>
												</div>
												<div class="pro-action">
													<a class="btn-remove" href="#">删除</a>
												</div>
											</li>
											<!-- single item -->
											<!-- single item -->
											<li><a class="product-image" href="product-details.html">
													<img alt="" src="${url}/statics/img/cart/2.jpg"> </a>
												<div class="product-details">
													<p class="cartproduct-name">
														<a href="product-details.html">New catolog</a>
													</p>
													<strong class="qty">qty:1</strong> <span class="sig-price">$222.00</span>
												</div>
												<div class="pro-action">
													<a class="btn-remove" href="#">删除</a>
												</div>
											</li>
											<!-- single item -->

										</ol>
										<div class="top-subtotal">
											金额合计: <span class="sig-price">$444.00</span>
										</div>
										<div class="cart-actions">
											<button>
												<span>结算</span>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- header-bottom-area-end -->
	<!-- header -->
	<!-- 三级菜单展示 -->
	<div class="mainmenu-area bg-color-2 hidden-xs hidden-sm">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="mainmenu-left visible-lg  visible-md">
						<div class="product-menu-title">
							<h2>
								所有商品分类 <i class="fa fa-arrow-circle-down"></i>
							</h2>
						</div>
						<div class="product_vmegamenu">
							<ul>
								<c:forEach var="productCategory"
									items="${productCategoryViewList}" varStatus="imgIndex">
									<li><a href="#" class="hover-icon"><img
											src="${url}/statics/img/menu-l/${imgIndex.index+1}.png"
											alt="" />${productCategory.productCategory.name}</a> 
											<!-- 二级菜单 -->
										<c:if test="${!empty productCategory.pcvList}">
											<div class="vmegamenu">
												<c:forEach var="productCategory2"
													items="${productCategory.pcvList}">
													<!-- 三级菜单 -->
													<c:if test="${!empty productCategory2.pcvList}">
														<span> <a href="#" class="vgema-title">${productCategory2.productCategory.name}</a>
															<c:forEach var="productCategory3"
																items="${productCategory2.pcvList}">
																<a href="#">${productCategory3.productCategory.name}</a>
															</c:forEach> </span>
													</c:if>
												</c:forEach>
											</div>
										</c:if></li>
								</c:forEach>
								<li><a href="#" class="hover-icon"><img
										src="${url}/statics/img/menu-l/12.png" alt="" />Sports &
										Outdoors</a>
									<div class="vmegamenu">
										<span> <a href="#" class="vgema-title">Electronic</a> <a
											href="#">Bedroom</a> <a href="#">Kitchen</a> <a href="#">Living
												room</a> <a href="#">Out door</a> </span> <span> <a href="#"
											class="vgema-title">Lights</a> <a href="#">All lights</a> <a
											href="#">Bed room</a> <a href="#">Living room</a> <a href="#">Out
												door</a> </span> <span> <a href="#" class="vgema-title">Television</a>
											<a href="#">Samsung</a> <a href="#">Samsung Oled</a> <a
											href="#">Sony</a> <a href="#">Sony Bravia</a> </span> <span>
											<a href="#" class="vgema-title">Washing</a> <a href="#">Commercial</a>
											<a href="#">Front-Load </a> <a href="#">Pedestal </a> <a
											href="#">Top-Load </a> </span>
									</div>
								</li>
								<li><a href="#" class="hover-icon"><img
										src="${url}/statics/img/menu-l/7.png" alt="" />Smartphone &
										Tablets</a>
									<div class="vmegamenu vmegamenu2">
										<span> <a href="#" class="vgema-title">HandBags</a> <a
											href="#">Kids</a> <a href="#">Mens</a> <a href="#">Student</a>
											<a href="#">Women</a> </span> <span> <a href="#"
											class="vgema-title">Clothing</a> <a href="#">Children</a> <a
											href="#">Kids</a> <a href="#">Mens</a> <a href="#">Womens</a>
										</span>
									</div>
								</li>
								<li><a href="#"><img
										src="${url}/statics/img/menu-l/8.png" alt="" />Health &
										Beauty</a></li>
								<li><a href="#"><img
										src="${url}/statics/img/menu-l/9.png" alt="" />Toys & Hobbies</a>
								</li>
								<li><a href="#"><img
										src="${url}/statics/img/menu-l/10.png" alt="" />Holiday
										Supplies & Gifts</a>
								</li>
								<li><a href="#"><img
										src="${url}/statics/img/menu-l/11.png" alt="" />Jewelry &
										Watches</a>
								</li>
								<li><a href="#"><img
										src="${url}/statics/img/menu-l/5.png" alt="" />Smartphone &
										Watches</a>
								</li>

							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<div class="mainmenu">
						<nav>
						<ul>
							<li><a href="index.jsp">首页</a></li>
							<c:if test="${!empty productCategoryViewList}">
								<c:forEach var="productCategory"
									items="${productCategoryViewList}">
									<li><a href="index.jsp">${productCategory.productCategory.name}</a>
									</li>
								</c:forEach>
							</c:if>
							<li><a href="contact-us.jsp">联系我们</a></li>
						</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- mobile-menu-start -->
	<div class="mobile-menu-area hidden-md hidden-lg">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="mobile-menu">
						<nav id="mobile-menu">
						<ul>
							<li></li>
							<c:if test="${!empty productCategoryList}">
								<c:forEach var="productCategory" items="${productCategoryList}">
									<li><a href="index.jsp">${productCategory.name}</a></li>
								</c:forEach>
							</c:if>
							<li><a href="${loginUrl }">${userName}</a></li>
						</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- mobile-menu-end -->
	<!-- mainmenu-area-end -->
</body>
</html>

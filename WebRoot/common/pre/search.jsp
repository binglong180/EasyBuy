<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="com.niu.util.*"%>
<%@ page language="java" import="com.niu.bean.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<c:if test="${empty url}">
	<c:set var="url" value="${pageContext.request.contextPath}"></c:set>
	<script type="text/javascript">
		var contextPath = "${url}";
	</script>
</c:if>

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
	<!-- ***************************************************************************** -->
	<!-- header-bottom-area-start -->
	<div class="header-bottom-area bg-color-1 ptb-25">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="logo">
						<a href="${url}/pre/index.jsp"><img
							src="${url}/statics/img/logo.png" alt="" /> </a>
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
							<form action="${url}/Product">
								<select name="#" id="select">
									<option value="">所有商品分类</option>
									<option value="40">Accessories</option>
									<option value="41">Clothing</option>
								</select> <input type="text" name="keyWord"
									value="${requestScope.keyWord}"> <input type="hidden"
									name="action" value="ProductList">
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
											class="count-item"> <c:set var="productItems"
													value="${sessionScope.cart.productItems}"></c:set> <c:if
													test="${empty productItems }">
												0
											</c:if> <c:if test="${!empty productItems }">
												${sessionScope.cart.productItems.size()}
											</c:if>种</span> <span class="price">${sessionScope.cart.sumPrice}</span> </a>
									</div>
									<div class="top-cart-content">
										<ol class="mini-products-list">
											<!-- single item -->
											<c:if test="${!empty sessionScope.cart.productItems}">
												<c:forEach var="item"
													items="${sessionScope.cart.productItems}">
													<li><a class="product-image"
														href="product-details.html"> <img
															alt="${item.product.fileName}"
															src="${url}/files/${item.product.fileName}"> </a>
														<div class="product-details">
															<p class="cartproduct-name">
																<a href="product-details.html">${item.product.name}
																</a>
															</p>
															<strong class="qty">${item.quantity}</strong> <span
																class="sig-price">${item.product.price}</span>
														</div>
														<div class="pro-action">
															<a class="btn-remove" href="#" onclick="deleteCart(${item.product.id})">删除</a>
														</div>
													</li>
												</c:forEach>
											</c:if>

											<!-- single item -->
										</ol>
										<div class="top-subtotal">
											金额合计: <span class="sig-price">${sessionScope.cart.sumPrice}</span>
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

	<!-- mainmenu-area-end -->
</body>
</html>

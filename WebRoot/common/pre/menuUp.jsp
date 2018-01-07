<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.niu.bean.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

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
	<!-- mainmenu-area-start -->
	<div class="mainmenu-area bg-color-2 hidden-xs hidden-sm">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="mainmenu-left visible-lg checkout-page  visible-md">
						<div class="product-menu-title">
							<h2>
								所有商品分类 <i class="fa fa-arrow-circle-down"></i>
							</h2>
						</div>
						<div class="product_vmegamenu">
							<ul>
								
									<c:forEach var="productCategory"
										items="${productCategoryViewList}" varStatus="imgIndex">
										<!--一级分类  -->
										<li><a
											href="${url}/Product?action=ProductList&categoryId=${productCategory.productCategory.id}"
											class="hover-icon"><img
												src="${url}/statics/img/menu-l/${imgIndex.index+1}.png"
												alt="" />${productCategory.productCategory.name}</a> <!-- 二级菜单 -->
											<c:if test="${!empty productCategory.pcvList}">
												<div class="vmegamenu">
													<c:forEach var="productCategory2"
														items="${productCategory.pcvList}">
														<!-- 三级菜单 -->
														<c:if test="${!empty productCategory2.pcvList}">
															<span> <a
																href="${url}/Product?action=ProductList&categoryId=${productCategory2.productCategory.id}"
																class="vgema-title">${productCategory2.productCategory.name}</a>
																<c:forEach var="productCategory3"
																	items="${productCategory2.pcvList}">
																	<a
																		href="${url}/Product?action=ProductList&categoryId=${productCategory3.productCategory.id}">${productCategory3.productCategory.name}</a>
																</c:forEach> </span>
														</c:if>
													</c:forEach>
												</div>
											</c:if></li>
									</c:forEach>
								</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<div class="mainmenu">
						<nav>
						<ul>
							<li><a href="${url}/Home/action=index">首页</a>
							</li>
							<c:if test="${!empty productCategoryViewList}">
								<c:forEach var="productCategory"
									items="${productCategoryViewList}">
									<li><a href="${url}/Product?action=ProductList&categoryId=${productCategory.productCategory.id}">${productCategory.productCategory.name}</a>
									</li>
								</c:forEach>
							</c:if>
							<li><a href="${url}/pre/contact-us.jsp">联系我们</a>
							</li>
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

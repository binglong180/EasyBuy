<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 商品展示#################################################################### -->
<div class="row" id="productList">
	<c:forEach var="product" items="${requestScope.productList}">
		<div class="col-lg-4 col-md-4 col-sm-6">
			<div class="single-product mb-30  white-bg">
				<div class="product-img pt-20">
					<a href="#"><img src="${url}/files/${product.fileName}"
						alt="${product.name}" /> </a>
				</div>
				<div class="product-content product-i">
					<div class="pro-title">
						<h4>
							<a href="product-details.html">${product.name}</a>
						</h4>
					</div>
					<div class="pro-rating ">
						<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
							class="fa fa-star"></i> </a> <a href="#"><i class="fa fa-star"></i>
						</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
							class="fa fa-star-o"></i> </a>
					</div>
					<div class="price-box">
						<span class="价格">${product.price}</span>
					</div>
					<div class="product-icon">
						<div class="product-icon-left f-left">
							<a href="#" onclick="addCart(${product.id},1)"><i
								class="fa fa-shopping-cart"></i>加入购物车</a>
						</div>
						<div class="product-icon-right floatright">
							<a href="#" data-toggle="tooltip" title="Compare"><i
								class="fa fa-exchange"></i> </a> <a href="#" data-toggle="tooltip"
								title="Wishlist"><i class="fa fa-heart"></i> </a>
						</div>
					</div>
				</div>
				<span class="new">new</span>
			</div>
		</div>
	</c:forEach>
</div>
<!-- 商品展示#################################################################### -->
<div class="content-sortpagibar">
	<c:set var="pageCount" value="${requestScope.pager.pageCount}">


	</c:set>
	<div class="product-count display-inline">共${pageCount}页</div>
	<ul class="shop-pagi display-inline">

		<li><a href="#"><i class="fa fa-angle-left"></i> </a>
		</li>
		<li><a href="${requestScope.pager.url}&currentPage=1">1</a></li>


		<c:forEach var="currentPage" begin="2" end="${pageCount}" step="1">
			<!-- 分页未用ajax优化 -->
			<li><a href="${requestScope.pager.url}&currentPage=${currentPage}">${currentPage}</a>
													</li>
		</c:forEach>
		<li><a href="#"><i class="fa fa-angle-right"></i> </a></li>
	</ul>
	<div class="selector-field f-right">
		<form action="#">
			<button class="compare">Compare (1)</button>
		</form>
	</div>
</div>


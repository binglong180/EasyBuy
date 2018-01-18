<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.niu.bean.*"%>
<%@ page import="com.niu.util.*"%>
<c:if test="${empty url}">
	<c:set var="url" value="${pageContext.request.contextPath}"></c:set>
	<script type="text/javascript">
		var contextPath = "${url}";
	</script>
</c:if>
<div class="breadcrumb-area">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="index.jsp"><i class="fa fa-home"></i> 首页</a></li>
			<li class="active">购物车</li>
		</ol>
	</div>
</div>
<!-- breadcrumb end -->
<!-- cart-main-area start -->
<div class="cart-main-area pt-0">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<form action="#">
					
					<div class="table-content table-responsive">
						<table>
							<thead>
								<tr>
								
									<th class="product-thumbnail">商品图片
								
									</th>
									<th class="product-name">商品名称</th>
									<th class="product-price">单价(￥)</th>
									<th class="product-quantity">数量</th>
									<th class="product-subtotal">金额</th>
									<th class="product-remove">删除</th>
								</tr>
							</thead>
							<tbody>
								
								<!-- 购物车Table -->
								<c:if test="${!empty requestScope.cart}">
									<c:forEach var="item" items="${requestScope.cart.productItems}">
									<!--  购物车的大小-->
									
										<tr>
											<td class="product-thumbnail"><a
												href="${url}/Product?action=showProductDetail&productId=${item.product.id}"
												target="_blank"><img
													src="${url}/files/${item.product.fileName}" alt="" /> </a></td>
											<td class="product-name"><a href="product-details.html">${item.product.name}
											</a></td>
											<td class="product-price"><span class="amount">${item.product.price}</span>
											</td>
											<td class="product-quantity"><input class="tableCartQuantity" type="number" min="1" max="${item.product.stock}"
												value="${item.quantity<=0?1:item.quantity}" onblur="modifyCart(this,${item.product.stock},${item.product.id})" name="quantity"/>
												
									
												</td>
											<td class="product-subtotal">${item.count}</td>
											<td class="product-remove"><a
												href="javascript:deleteCart(${item.product.id})"><i
													class="fa fa-times"></i> </a></td>
										</tr>
									</c:forEach>
								</c:if>


							</tbody>
						</table>
					</div>
					<div class="row">
						<div class="col-md-9 col-sm-7 col-xs-12">
							<div class="buttons-cart"  style="cursor:pointer">
								<a id="emptyCary">清空购物车</a>
							</div>

						</div>
						<div class="col-md-3 col-sm-5 col-xs-12">
							<div class="cart_totals">
								<table>
									<tbody>
										<tr class="order-total">
											<th>合计金额</th>
											<td><strong><span class="amount">${requestScope.cart.sumPrice}</span>
											</strong>
											</td>
										</tr>
									</tbody>
								</table>
								<div class="wc-proceed-to-checkout">
									<a href="javascript:toSettle()">去结算</a>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- cart-main-area end -->

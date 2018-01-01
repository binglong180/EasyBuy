<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!-- 头部导入 -->
<%@include file="../common/pre/header.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>我的购物车</title>

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

</head>

<body>
	<!-- breadcrumb start -->
	<div class="breadcrumb-area">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index.jsp"><i class="fa fa-home"></i> 首页</a>
				</li>
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
										<th class="product-thumbnail">Image</th>
										<th class="product-name">Product</th>
										<th class="product-price">Price</th>
										<th class="product-quantity">Quantity</th>
										<th class="product-subtotal">Total</th>
										<th class="product-remove">Remove</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="product-thumbnail"><a href="#"><img
												src="img/product/3.jpg" alt="" />
										</a>
										</td>
										<td class="product-name"><a href="product-details.html">Vestibulum
												suscipit</a>
										</td>
										<td class="product-price"><span class="amount">$165.00</span>
										</td>
										<td class="product-quantity"><input type="number"
											value="1" />
										</td>
										<td class="product-subtotal">$165.00</td>
										<td class="product-remove"><a href="#"><i
												class="fa fa-times"></i>
										</a>
										</td>
									</tr>
									<tr>
										<td class="product-thumbnail"><a href="#"><img
												src="img/product/4.jpg" alt="" />
										</a>
										</td>
										<td class="product-name"><a href="product-details.html">Vestibulum
												dictum magna</a>
										</td>
										<td class="product-price"><span class="amount">$50.00</span>
										</td>
										<td class="product-quantity"><input type="number"
											value="1" />
										</td>
										<td class="product-subtotal">$50.00</td>
										<td class="product-remove"><a href="#"><i
												class="fa fa-times"></i>
										</a>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-md-9 col-sm-7 col-xs-12">
								<div class="buttons-cart">
									<input type="submit" value="Update Cart" /> <a href="#">Continue
										Shopping</a>
								</div>
								<div class="coupon">
									<h3>Coupon</h3>
									<p>Enter your coupon code if you have one.</p>
									<input type="text" placeholder="Coupon code" /> <input
										type="submit" value="Apply Coupon" />
								</div>
							</div>
							<div class="col-md-3 col-sm-5 col-xs-12">
								<div class="cart_totals">
									<h2>Cart Totals</h2>
									<table>
										<tbody>
											<tr class="cart-subtotal">
												<th>Subtotal</th>
												<td><span class="amount">$215.00</span>
												</td>
											</tr>
											<tr class="order-total">
												<th>Total</th>
												<td><strong><span class="amount">$215.00</span>
												</strong></td>
											</tr>
										</tbody>
									</table>
									<div class="wc-proceed-to-checkout">
										<a href="#">Proceed to Checkout</a>
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

</body>
<!-- 尾部导入 -->
<%@include file="../common/pre/footer.jsp"%>
</html>

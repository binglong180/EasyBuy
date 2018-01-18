<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.niu.bean.*"%>
<%@ page import="com.niu.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<c:if test="${empty url}">
	<c:set var="url" value="${pageContext.request.contextPath}"></c:set>
	<script type="text/javascript">
		var contextPath = "${url}";
	</script>
</c:if>
<link rel="stylesheet" href="${url }/statics/css/imstyle.css"
	type="text/css"></link>

<script type="text/javascript"
	src="${url}/statics/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="${url}/statics/js/menu.js"></script>

<script type="text/javascript" src="${url}/statics/js/n_nav.js"></script>

<script type="text/javascript" src="${url}/statics/js/select.js"></script>

<script type="text/javascript" src="${url}/statics/js/num.js">
	var jq = jQuery.noConflict();
</script>

<script type="text/javascript" src="${url}/statics/js/shade.js"></script>

<div class="i_bg">
	<div class="content mar_20">
		<img src="${url}/statics/images/img2.jpg" />
	</div>

	<!--Begin 第二步：确认订单信息 Begin -->
	<div class="content mar_20">
		<div class="two_bg">
			<div class="two_t">
				<span class="fr"><a href="#">修改</a> </span>商品列表
			</div>
			<table border="0" class="car_tab" style="width:1110px;"
				cellspacing="0" cellpadding="0">
				<tr>
					<td class="car_th" width="350">商品名称</td>
					<td class="car_th" width="200">购买数量</td>
					<td class="car_th" width="200">单价</td>
					<td class="car_th" width="200">小计</td>
				</tr>

				<!-- 购物车Table -->
				<c:if test="${!empty requestScope.cart}">
					<c:forEach var="item" items="${requestScope.cart.productItems}">
						<!--  购物车的大小-->
						<tr>
							<td class="car_th" align="center" style="vertical-align:middle">
								<div class="c_s_img">
									<a
										href="${url}/Product?action=showProductDetail&productId=${item.product.id}"><img
										src="${url}/files/${item.product.fileName}" width="73"
										height="73" /> </a>
								</div> <a
								href="${url}/Product?action=showProductDetail&productId=${item.product.id}">${item.product.name}
							</a></td>
							<td class="car_th" align="center">${item.quantity<=0?1:item.quantity}</td>
							<td class="car_th" align="center">${item.product.price}</td>
							<td class="car_th" align="center" style="color:#ff4e00;">${item.count}</td>
						</tr>
					</c:forEach>
				</c:if>



				<tr>
					<td colspan="5" align="right"
						style="font-family:'Microsoft YaHei';">商品总价：${requestScope.cart.sumPrice}</td>
				</tr>
			</table>

			<div class="two_t">
				<span class="fr"><a href="#">修改</a> </span>收货人信息
			</div>
			<table border="0" class="peo_tab" style="width:1110px;"
				cellspacing="0" cellpadding="0">
				<tr>
					<td class="p_td" width="160">客户姓名</td>
					<td width="395">${sessionScope.user.userName}</td>
					<td class="p_td" width="160">电子邮件</td>
					<td width="395">${sessionScope.user.email}</td>
				</tr>
				<tr>
					<td class="p_td">电话</td>
					<td>${sessionScope.user.mobile}</td>
					<td class="p_td">手机</td>
					<td>${sessionScope.user.mobile}</td>
				</tr>
				<tr>
					<td class="p_td">标志建筑</td>
					<td></td>
					<td class="p_td">最佳送货时间</td>
					<td></td>
				</tr>
			</table>
			<!-- 地址列表start-->
			<div class="two_t">
				<span class="fr"><a href="#"></a> </span>选择地址
			</div>
			<table border="0" class="peo_tab" style="width:1110px;"
				cellspacing="0" cellpadding="0">
				<tr>
					<td width="100">地址名称</td>
					<td width="395">地址详情</td>
				</tr>
				<c:forEach items="${requestScope.addressList}" var="item">
					<tr>
						<td width="100"><input type="radio" name="addressId"
							value="${item.id }" style="width:20px" />&nbsp;${item.remark }</td>
						<td width="395">${item.address}</td>
					</tr>
				</c:forEach>
			</table>
			<!-- 地址列表 end -->
			<!-- 地址新增start-->
			<div class="two_t">
				<span class="fr"><a href="#"></a> </span>新增地址
			</div>
			<form id="MyAddressForm">
			<table border="0" class="peo_tab" style="width:1110px;"
				cellspacing="0" cellpadding="0">
				<tr>
					<td width="150" class="car_th">新增地址
					</td>
					<td class="car_th">地址：<input type="text" name="newAddress"
						id="newAddress" style="width:350px"/>
					</td>
					<td class="car_th">备注：<input type="text" name="newRemark"
						id="newRemark" style="width:200px"/>
					</td>
					<td class="car_th">
					<div class="wc-proceed-to-checkout">
					<a href="javascript:addAddress()">新增</a>
					</div>
					</td>
				</tr>
			</table>
			</form>
			<!-- 地址新增end-->
			<div class="two_t">配送方式</div>
			<table border="0" class="car_tab" style="width:1110px;"
				cellspacing="0" cellpadding="0">
				<tr>
					<td class="car_th" width="80"></td>
					<td class="car_th" width="200">名称</td>
					<td class="car_th" width="370">订购描述</td>
					<td class="car_th" width="150">费用</td>
					<td class="car_th" width="135">免费额度</td>
					<td class="car_th" width="175">保价费用</td>
				</tr>
				<tr>
					<td align="center"><input type="checkbox" name="ch"
						checked="checked" style="width:20px" /></td>
					<td align="center" style="font-size:14px;"><b>申通快递</b></td>
					<td>江、浙、沪地区首重为15元/KG，其他地区18元/KG，续重均为5-6元/KG， 云南地区为8元</td>
					<td align="center">￥0.00</td>
					<td align="center">￥0.00</td>
					<td align="center">不支持保价</td>
				</tr>
			</table>

			<div class="two_t">支付方式</div>
			<ul class="pay">
				<li>支付宝
					<div class="ch_img"></div></li>
			</ul>
			<table border="0" style="width:900px; margin-top:20px;"
				cellspacing="0" cellpadding="0">
				<tr height="70">
					<td align="right"><b style="font-size:14px;">应付款金额：<span
							style="font-size:22px; color:#ff4e00;">${requestScope.cart.sumPrice}</span> </b>
					</td>
				</tr>
				<tr height="70">
					<td align="right"><a href="javascript:addOrder()"><img
							src="${url}/statics/images/btn_sure.gif" /> </a></td>
				</tr>
			</table>
		</div>
	</div>
	<!--End 第二步：确认订单信息 End-->
</div>
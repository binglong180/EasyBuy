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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<link rel="stylesheet" href="${url}/backend/css/style.default.css"
	type="text/css" />
<script type="text/javascript"
	src="${url}/statics/js/vendor/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${url}/backend/js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript"
	src="${url}/backend/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript"
	src="${url}/backend/js/plugins/jquery.cookie.js"></script>
<script type="text/javascript"
	src="${url}/backend/js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="${url}/backend/js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="${url}/backend/js/custom/general.js"></script>
<script type="text/javascript" src="${url}/backend/js/custom/tables.js"></script>
<script type="text/javascript" src="${url}/backend/js/user/user.js"></script>
<script type="text/javascript" src="${url}/backend/js/order/order.js"></script>
<div id="contentwrapper" class="contentwrapper">
	<div class="contenttitle2">
		<h3>订单详情</h3>
	</div>
	<!--contenttitle-->
	<table cellpadding="0" cellspacing="0" border="0" class="stdtable stdtablecb">
		<colgroup>
			<col class="con1" />
			<col class="con0" />
			<col class="con1" />
			<col class="con0" />

		</colgroup>
		
		<tbody>
			<tr class="gradeX">
			</tr>
			<tr class="gradeX">
				<td class="center">订单号</td>
				<td class="center">${requestScope.order.serialNumber}</td>
				<td class="center">创建时间</td>

				<td class="center">${requestScope.order.createTime}</td>

			</tr>
			<tr class="gradeX">
				<td  class="center">地址</td>
				<td class="center">${requestScope.order.userAddress}</td>
				<td class="center">金额</td>
				<td class="center">${requestScope.order.cost}</td>
			</tr>
			<tr class="gradeX">
					<td class="center">商品</td>
					<td class="center">商品名</td>
					<td class="center">数量</td>
					<td class="center">小计</td>
				</tr>
			<c:forEach var="item" items="${requestScope.orderDetailList}">
				<tr class="gradeX">
					<td class="center"><img src="${url}/files/${item.file}" alt="" style="height:100px"/>
						
					</td>
					<td class="center">${item.name}</td>
					<td class="center">${item.quantity}</td>

					<td class="center">${item.cost}</td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
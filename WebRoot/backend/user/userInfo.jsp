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
<link rel="stylesheet" href="${url}/backend/css/style.default.css"
	type="text/css" />
	<script type="text/javascript" src="${url}/statics/js/vendor/jquery-1.12.4.js"></script>
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
<script type="text/javascript"
	src="${url}/backend/js/user/user.js"></script>

<div id="contentwrapper" class="contentwrapper">

	<div class="contenttitle2">
		<h3>用户信息</h3>
	</div>
	<!--contenttitle-->

	<table cellpadding="0" cellspacing="0" border="0" class="stdtable"
		style="width: 800px">
		<colgroup>
			<col class="con0" />
			<col class="con1" />
		</colgroup>
		<thead>
			<tr>
				<th class="head0" colspan="2">我的信息</th>
			</tr>
		</thead>
		<tr>
			<td class="center">登录名</td>
			<td class="center">${sessionScope.user.loginName}</td>
		</tr>
		<tr>
			<td class="center">姓名</td>
			<td class="center">${sessionScope.user.userName}</td>
		</tr>
		<tr>
			<td class="center">性别</td>
			<td class="center"><c:if test="${sessionScope.user.sex==1}">
					男
				</c:if>
				<c:if test="${sessionScope.user.sex!=1}">
					女
				</c:if>
			</td>
		</tr>
		<tr>
			<td class="center">身份证号</td>
			<td class="center">${sessionScope.user.identityCode}</td>
		</tr>
		<tr>
			<td class="center">手机号</td>
			<td class="center">${sessionScope.user.mobile}</td>
		</tr>
		<tr>
			<td class="center">邮箱</td>
			<td class="center">${sessionScope.user.email}</td>
		</tr>
		</tbody>
	</table>

	<br /> <br />
</div>
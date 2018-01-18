<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.niu.bean.*"%>
<%@ page import="com.niu.util.*"%>

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
	<c:if test="${empty url}">
		<c:set var="url" value="${pageContext.request.contextPath}"></c:set>
		<script type="text/javascript">
			var contextPath = "${url}";
		</script>
	</c:if>
	<c:set var="product" value="${requestScope.product}"></c:set>
	<div id="MyLink">
		<%@include file="../../common/pre/Link.jsp"%>
	</div>
	<div id="MyHeader">
		<%@include file="../../common/pre/header.jsp"%>
	</div>
	<div id="MySearch">
		<%@include file="../../common/pre/search.jsp"%>
	</div>
	<div id="MyMenu">
		<%@include file="../../common/pre/menuUp.jsp"%>
	</div>
	<div id="MyCart">
		<%@include file="cartShow.jsp"%>
	</div>
	<div id="MyFooter">
		<%@include file="../../common/pre/footer.jsp"%>
	</div>
	

</body>
</html>

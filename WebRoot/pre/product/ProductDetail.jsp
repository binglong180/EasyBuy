<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.niu.bean.*"%>
<%@ page import="com.niu.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>


<title>商品详情页</title>


<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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
	<div id="MyProductDetail">
		<%@include file="ShowProductDetail.jsp"%>
	</div>
	<div id="MyFooter">
		<%@include file="../../common/pre/footer.jsp"%>
	</div>
</body>

</html>

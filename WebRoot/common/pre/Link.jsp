<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.niu.bean.*"%>
<%@ page import="com.niu.util.*"%>

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
<c:if test="${empty url}">
		<c:set var="url" value="${pageContext.request.contextPath}"></c:set>
		<script type="text/javascript">
			var contextPath = "${url}";
		</script>
</c:if>

<!-- 验证样式 -->
<link rel="stylesheet" href="${url}/statics/css/myCss/register.css">
<link rel="icon" href="${url}/statics/img/favicon.png" />
<!-- bootstrap.min.css -->
<link rel="stylesheet" href="${url}/statics/css/bootstrap.min.css">
<!-- font-awesome.min.css -->
<link rel="stylesheet" href="${url}/statics/css/font-awesome.min.css">
<!-- owl.carousel.css -->
<link rel="stylesheet" href="${url}/statics/css/owl.carousel.css">
<!-- owl.carousel.css -->
<link rel="stylesheet" href="${url}/statics/css/meanmenu.min.css">
<!-- shortcode/shortcodes.css -->
<link rel="stylesheet"
	href="${url}/statics/css/shortcode/shortcodes.css">
<!-- nivo-slider.css -->
<link rel="stylesheet" href="${url}/statics/css/nivo-slider.css">
<!-- style.css -->
<link rel="stylesheet" href="${url}/statics/style.css">
<!-- responsive.css -->
<link rel="stylesheet" href="${url}/statics/css/responsive.css">
<!--Google Fonts-->
<!--图片验证-->
<link rel="stylesheet" type="text/css"
	href="${url}/statics/css/login/verify.css">
<body>

</body>
</html>

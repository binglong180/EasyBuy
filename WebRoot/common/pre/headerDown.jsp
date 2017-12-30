<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.niu.bean.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%
	String paths = request.getContextPath();
	String basePaths = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ paths + "/pre/";
%>

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
<!-- ***************************************************************************** -->
<!-- 获取当前在线用户 -->
<c:choose>
	<c:when test="${!empty user}">
		<c:set var="userName" value="${user.userName}" scope="session"></c:set>
		<c:set var="loginUrl" value="account.jsp" scope="session"></c:set>
	</c:when>
	<c:otherwise>
		<c:set var="userName" value="登录  / 注册" scope="session"></c:set>
		<c:set var="loginUrl" value="login.jsp" scope="session"></c:set>
	</c:otherwise>
</c:choose>
<!-- ***************************************************************************** -->
<body>
	<header>  
</body>

</html>

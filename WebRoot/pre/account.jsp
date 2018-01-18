<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.niu.bean.User"%>
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
<link rel="icon" href="img/favicon.png" />
<!-- Place favicon.ico in the root directory -->

</head>

<body>
	<div id="MyLink">
		<%@include file="../../common/pre/Link.jsp"%>
	</div>
	<div id="MyHeader">
		<%@include file="../../common/pre/header.jsp"%>
	</div>
	<div id="MySearch">
		<%@include file="../../common/pre/search.jsp"%>
	</div>
	<%
		User users = (User) session.getAttribute("user");
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			cookies[i].getValue();
			cookies[i].getValue();
		}
	%>
	<%=users.getUserName()%>
</body>
<%@include file="../common/pre/footer.jsp"%>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.niu.bean.*"%>
<%@ page import="com.niu.util.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
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
		<div class="account-info pb-30">
			<form method="post" id="LoginForm">
				<div class="form-fields">
					<h2>登录</h2>
					<p>
						<label>登录名<span class="required">*</span> </label> <input
							type="text" value="" name="loginName" id="loginName"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = '';}">
					</p>
					<p>
						<label>密码<span class="required">*</span> </label> <input
							type="password" value="" name="password" id="password"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = '';}">
					</p>
					<div id="slider2" class="slider"
						style="margin-top:5px;margin-bottom:10px;"></div>
					<input type="hidden" name="action" value="login" />
				</div>
				<div class="form-action">
					<label> <a href="#" class="lost_password">忘记密码</a> <input
						type="checkbox" style="width:18px;height:18px;margin-left:200px">
						记住密码 </label><input value="登录" type="button" id="loginSubmit">
				</div>
			</form>
		</div>
</body>
</html>

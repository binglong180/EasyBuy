<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ include file="../common/pre/header.jsp" %>
<html>
<head>

<title>登录页面</title>
<!-- Custom Theme files -->

<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!-- 登录页面样式 -->
<link href="${url}/statics/css/login/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!--Google Fonts-->
</head>
<body>
	<%
		//从请求中获取所有的cookie
		Cookie[] css = request.getCookies();
		String loginName = "";
		String password = "";
		//非空验证
		if (css != null) {
			for (int i = 0; i < css.length; i++) { //遍历cookie数组
				if ("loginName".equals(css[i].getName())) {
					loginName = css[i].getValue();
				}
				if ("password".equals(css[i].getName())) {
					password = css[i].getValue(); //解码
				}
			}
		}
	%>
	<div class="login" style="margin-bottom:150px">
		<div class="login-top">
			<h1>登 录</h1>
			<form  method="post">
				<input type="text" value="loginName" name="loginName" id="loginName"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'loginName';}">
				<input type="password" value="password" name="password" id="password"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'password';}">
				<div class="forgot">
					<a href="#">忘记密码</a> <input type="button" value="登录" onclick="login()">
				</div>
				<input type="hidden" name="action" value="login" />
		</div>
		<div class="login-bottom">
			<h3>
				新用户 &nbsp;<a href="${url}/pre/register.jsp">注册</a>
			</h3>
		</div>
		</form>
	</div>
	</div>
	<%@include file="../common/pre/footer.jsp" %>

</body>
</html>
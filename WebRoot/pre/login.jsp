<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Home</title>
<!-- Custom Theme files -->
<link href="css/login/style.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<link
	href='http://fonts.useso.com/css?family=Roboto:500,900italic,900,400italic,100,700italic,300,700,500italic,100italic,300italic,400'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.useso.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
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
	<div class="login">
		<a href="<%=path %>/pre/index.jsp"><h2>返回首页</h2></a>
		<div class="login-top">
			<h1>登 录</h1>
			<form action="/EasyBuy/login" method="post">
				<input type="text" value="loginName" name="loginName"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'loginName';}">
				<input type="password" value="password" name="password"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'password';}">

				<div class="forgot">
					<a href="#">忘记密码</a> <input type="submit" value="登录">
				</div>
		</div>
		<div class="login-bottom">
			<h3>
				新用户 &nbsp;<a href="<%=path %>/pre/register.jsp">注册</a>
			</h3>
		</div>
		</form>
	</div>
	</div>
	<div class="copyright">
		<p>Copyright &copy; 2015.Company name All rights reserved.</p>
	</div>


</body>
</html>
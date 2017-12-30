<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 头部导入 -->
<%@include file="../common/pre/header.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>注册账号</title>

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
	<div class="breadcrumb-area">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index.jsp"><i class="fa fa-home"></i> 首页</a></li>
				<li class="active">注册</li>
			</ol>
		</div>
	</div>
	<!-- breadcrumb end -->
	<!-- 注册用户-->
	<div class="account-area pt-30 log">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-6 col-sm-6">
				<form action="" id="MyForm">
				<div class="form-fields pb-30">
						<h2>邮箱注册<a href="register.jsp" style="float:right">手机号注册</a></h2>
						<p>
							<label>登录名<span class="required">*</span> </label> <input
								type="text" name="loginName">
						</p>
						<p>
							<label>密 码<span class="required">*</span> </label> <input
								type="password" name="password" id="password">
						</p>
						<p>
							<label>确认密码 <span class="required">*</span> </label> <input
								type="password" name="affirmPassword">
						</p>
						<p>
							<label>邮 箱<span class="required">*</span> </label> <input
								type="email" name="email">
						</p>
					</div>
					<div class="form-action floatright">
						<input value="Register" type="submit">
					</div>
				</form>
					
				</div>
			</div>
		</div>
	</div>
	<!-- 注册用户 area end -->
</body>
<!-- 底部导入 -->
<%@include file="../common/pre/footer.jsp"%>
</html>

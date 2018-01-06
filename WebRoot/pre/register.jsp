<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 头部导入 -->
<%@include file="../common/pre/header.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


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
				<div class="col-md-6 col-lg-6 col-sm-6 col-md-offset-3"
					style="margin-bottom:100px;margin-top:100px">
					<form id="mobileForm" name="mobileForm">
						<div class="form-fields pb-30">
							<h2>
								手机号注册<a style="float:right" id="tableMobile">邮箱注册</a>
							</h2>
							<input type="hidden" name="way" value="mobile" id="way" /> <input
								type="hidden" name="action" value="register" id="way" />
							<p>
								<label>手 机<span class="required">*</span> </label> <input
									type="text" name="mobile" id="mobile">
							</p>
							<p id="mVerification" style="display:none">
								<label>验证码<span class="required">*</span> </label> <input
									type="button" name="mobileVerification" id="mobileVerification"
									value="免费获取验证码" style="background:black;color:white"> <input
									type="text" name="mobileVerificationCode"
									id="mobileVerificationCode">
							</p>
						</div>
					</form>
					<!--  ****************************************************************************************************************-->
					<form id="emailForm" name="emailForm" style="display:none;">
						<div class="form-fields pb-30">
							<h2>
								邮箱注册<a style="float:right" id="tableEmail">手机号注册</a>
							</h2>
							<input type="hidden" name="way" value="email" id="way" /> <input
								type="hidden" name="action" value="register" id="way" />
							<p>
								<label>邮箱<span class="required">*</span> </label> <input
									type="email" name="email" id="email">
							</p>
							<p id="eVerification" style="display:none">
								<label>验证码<span class="required">*</span> </label>
								<!-- 邮箱验证码 -->
								<input type="button" name="emailVerification"
									id="emailVerification" value="获取邮箱验证码"
									style="background:black;color:white"> <input
									type="text" name="emailVerificationCode"
									id="emailVerificationCode">
							</p>
						</div>
					</form>
					<!-- *************************************************************************************************** -->
					<form id="commonForm" name="commonForm" style="display:none">
						<div class="form-fields pb-30">
							<p>
								<label>登录名<span class="required">*</span> </label> <input
									type="text" name="loginName" id="loginName">
							</p>
							<p>
								<label>密 码<span class="required">*</span> </label> <input
									type="password" name="password" id="password">
							</p>



							<p>
								<label>确认密码 <span class="required">*</span> </label> <input
									type="password" name="affirmPassword" id="affirmPassword">
							</p>
							<p>
								<label>用户名<span class="required">*</span> </label> <input
									type="text" name="userName" id="userName">
							</p>
							<p>
								<label>性 别<span class="required">*</span> </label> <select
									name="sex" id="sex">
									<option value=1 selected="selected">男</option>
									<option value=0>女</option>
								</select>
							</p>

						</div>
						<div class="form-action floatright">
							<input value="注册" type="button" id="registerSubmit">
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<%@include file="../common/pre/footer.jsp"%>

</body>
<!-- tab切换 -->
<script type="text/javascript">
	$("#tableMobile").click(function() {
		$("#mobileForm").hide();
		$("#emailForm").show();

	});
	$("#tableEmail").click(function() {
		$("#emailForm").hide();
		$("#mobileForm").show();
	});
</script>

</html>

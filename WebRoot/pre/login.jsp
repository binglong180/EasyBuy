<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ include file="../common/pre/header.jsp"%>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Login</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
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


	<!-- account area start -->
	<div class="account-area pt-30 log">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-6 col-sm-6 col-md-offset-3"
					style="margin-bottom:100px;margin-top:100px">
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
									type="checkbox"
									style="width:18px;height:18px;margin-left:200px"> 记住密码
								</label><input value="登录" type="button" id="loginSubmit">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- account area end -->

</body>
<%@include file="../common/pre/footer.jsp"%>

<script type="text/javascript">
	
</script>
</html>











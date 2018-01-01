<%@page import="javax.faces.application.Application"%>
<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!-- ***************************************************************** -->
<!-- 基础路径的配置 -->
<c:set var="url" value="${pageContext.request.contextPath}"></c:set>
<script type="text/javascript">
	var contextPath = "${url}";
</script>
<!-- ***************************************************************** -->
<!-- 获取当前在线用户 -->
<c:choose>
	<c:when test="${!empty user}">
		<c:set var="userName" value="${user.userName}" scope="session"></c:set>
		<c:set var="LogOutName" value="注销" scope="session"></c:set>
		<c:set var="LogOutUrl" value="${url}/Login?action=loginOut"
			scope="session"></c:set>
	</c:when>
	<c:otherwise>
		<c:set var="userName" value="登录  / 注册" scope="session"></c:set>
		<c:set var="loginUrl" value="${url}/Login?action=toLogin"
			scope="session"></c:set>
		<c:set var="LogOutShow" value="" scope="session"></c:set>
	</c:otherwise>
</c:choose>
<!-- ****************************************************************** -->
<title>My JSP 'header.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="textcss" href="styles.css">
	-->
<!-- all css here -->
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

</head>

<body>

	<!-- header-top-area-start -->
	<div class="header-top-area black-bg ptb-7 hidden-xs">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-4">
					<div class="header-top-left">
						<span><a href="#">服务热线:</a>(+86)185-3580-9768</span>
					</div>
				</div>
				<div class="col-lg-9 col-md-9 col-sm-8">
					<div class="header-top-right">
						<c:if test="${empty user}">
							<!-- 未登录 -->
							<ul>
								<li class="slide-toggle"><a> <i class="fa fa-user"></i>
										${userName} </a>
									<ul class="show-toggle">
										<li><a href="${url}/Login?action=toLogin">登录</a></li>
										<li><a href="${url}/Register?action=toRegister">注册</a></li>
									</ul>
								</li>
							</ul>
							<ul><li><a href="${url}/Login?action=toLogin"><i class="fa fa-check"></i> 结算</a></li></ul>
						</c:if>
						<c:if test="${!empty user}">
							<!-- 已登录 -->
							<ul>
								<li><a> <i class="fa fa-user"></i> ${userName} </a>
								</li>
							</ul>
							<ul>
								<li><a href="${LogOutUrl}">${LogOutName}</a></li>
							</ul>
							<ul><li><a href="${url}/Login?action=toLogin"><i class="fa fa-check"></i> 结算</a></li></ul>
						</c:if>

						
					
						
						
							
						
						<ul>
							<li class="slide-toggle-2 text-uppercase"><a href="#"><i
									class="fa fa-usd"></i>USD</a>
								<ul class="show-toggle-2">
									<li><a href="#"><i class="fa fa-eur"></i> EUR</a></li>
									<li><a href="#"><i class="fa fa-gbp"></i> GBP</a></li>
									<li><a href="#"><i class="fa fa-usd"></i> USD</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="slide-toggle-3 text-uppercase"><a href="${url}/Home?action=index"> 首页</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- header-top-area-end -->
	<!--  模态窗口-->
	<div id="fade1" class="black_overlay"></div>
	<div id="MyDiv1" class="white_content">
		<div class="white_d">
			<div class="notice_t">
				<span class="fr"
					style="margin-top:10px;margin-left:450px; cursor:pointer;"
					onclick="CloseDiv_1('MyDiv1','fade1')"><img
					src="${url}/statics/img/close.gif" /> </span>
			</div>
			<div class="notice_c">
				<table border="0" align="center" cellspacing="0" cellpadding="0">
					<tr valign="top">
						<td width="40"><img src="${url}/statics/img/suc.png"></td>
						<td><span
							style="color:#3e3e3e; font-size:18px; font-weight:bold;"
							id="showMessage">操作成功</span><br /></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<!--  模态窗口结束-->
</body>
</html>

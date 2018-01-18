<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.niu.bean.*"%>
<%@ page import="com.niu.util.*"%>

	<c:if test="${empty url}">
		<c:set var="url" value="${pageContext.request.contextPath}"></c:set>
		<script type="text/javascript">
			var contextPath = "${url}";
		</script>
	</c:if>
		<div class="topheader">
			<div class="left">
				<h1 class="logo">
				
				</h1>
				<span class="slogan">后台管理系统</span>

				<div class="search">
					<form action="" method="post">
						<input type="text" name="keyword" id="keyword"
							value="Enter keyword(s)" />
						<button class="submitbutton"></button>
					</form>
				</div>
				<!--search-->

				<br clear="all" />

			</div>
			<!--left-->

			<div class="right">
				<!--<div class="notification">
                <a class="count" href="notifications.html"><span>9</span></a>
        	</div>
			-->
				<div class="userinfo">
					<img src="${url}/backend/images/thumbs/avatar.png" alt="" /> <span>${sessionScope.user.loginName}</span>
				</div>
				<!--userinfo-->

				<div class="userinfodrop">
					<div class="avatar">
						<a href=""><img src="${url}/backend/images/thumbs/avatarbig.png" alt="" /> </a>
						<div class="changetheme">
							修改主题: <br /> <a class="default"></a> <a class="blueline"></a>
							<a class="greenline"></a> <a class="contrast"></a> <a
								class="custombg"></a>
						</div>
					</div>
					<!--avatar-->
					<div class="userdata">
						<h4>${sessionScope.user.loginName}</h4>
						<span class="email">${sessionScope.user.email}</span>
						<span class="email">${sessionScope.user.mobile}</span>
						<ul>
							<li><a href="editprofile.html">Edit Profile</a>
							</li>
							<li><a href="accountsettings.html">${sessionScope.user.loginName}</a>
							</li>
							<li><a href="help.html">Help</a>
							</li>
							<li><a href="${url}/Login?action=loginOut">退出</a>
							</li>
						</ul>
					</div>
					<!--userdata-->
				</div>
				<!--userinfodrop-->
			</div>
			<!--right-->
		</div>
		<!--topheader-->
		<!--right-->

		<!--topheader-->

		<div class="header">
			<ul class="headermenu">
				<li class="current"><a
					href="${url}/BackendUser?action=userInfo"><span
						class="icon icon-flatscreen"></span>用户管理</a>
				</li>
				<li><a href="${url}/BackendOrderServlet?action=getOrder"><span
						class="icon icon-pencil"></span>订单管理</a></li>
				<li><a href="messages.html"><span class="icon icon-message"></span>商品管理</a>
				</li>
				<li><a href="${url}/Home?action=index"><span
						class="icon icon-chart"></span>首页</a>
				</li>
			</ul>

			<br clear="all" />

		</div>
		<!--header-->

	<!--topheader-->

<%-- 

		<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />



</head>
<!--right-->
<body class="withvernav">
	<div class="bodywrapper">
		<div class="topheader">
			<div class="left">
				<h1 class="logo">
					Ama.<span>Admin</span>
				</h1>
				<span class="slogan">后台管理系统</span>

				<div class="search">
					<form action="" method="post">
						<input type="text" name="keyword" id="keyword"
							value="Enter keyword(s)" />
						<button class="submitbutton"></button>
					</form>
				</div>
				<!--search-->

				<br clear="all" />

			</div>
			<!--left-->

			<div class="right">
				<!--<div class="notification">
                <a class="count" href="notifications.html"><span>9</span></a>
        	</div>
			-->
				<div class="userinfo">
					<img src="${url}/backend/images/thumbs/avatar.png" alt="" /> <span>Juan
						Dela Cruz</span>
				</div>
				<!--userinfo-->

				<div class="userinfodrop">
					<div class="avatar">
						<a href=""><img src="${url}/backend/images/thumbs/avatarbig.png" alt="" /> </a>
						<div class="changetheme">
							Change theme: <br /> <a class="default"></a> <a class="blueline"></a>
							<a class="greenline"></a> <a class="contrast"></a> <a
								class="custombg"></a>
						</div>
					</div>
					<!--avatar-->
					<div class="userdata">
						<h4>Juan Dela Cruz</h4>
						<span class="email">youremail@yourdomain.com</span>
						<ul>
							<li><a href="editprofile.html">Edit Profile</a></li>
							<li><a href="accountsettings.html">Account Settings</a></li>
							<li><a href="help.html">Help</a></li>
							<li><a href="index.html">Sign Out</a></li>
						</ul>
					</div>
					<!--userdata-->
				</div>
				<!--userinfodrop-->
			</div>
			<!--right-->
		</div>
		<!--topheader-->
		<!--right-->

		<!--topheader-->

		<div class="header">
			<ul class="headermenu">
				<li class="current"><a
					href="${url}/BackendUser?action=userInfo"><span
						class="icon icon-flatscreen"></span>用户管理</a></li>
				<li><a href="manageblog.html"><span
						class="icon icon-pencil"></span>订单管理</a>
				</li>
				<li><a href="messages.html"><span class="icon icon-message"></span>商品管理</a>
				</li>
				<li><a href="${url}/Home?action=index"><span
						class="icon icon-chart"></span>首页</a></li>
			</ul>

			<br clear="all" />

		</div>
		<!--header-->
	</div>
	
</body>
		</html>
		<!--leftmenu-->


 --%>
<!-- centercontent -->
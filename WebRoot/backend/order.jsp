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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>订单管理</title>
<script type="text/javascript" src="${url}/backend/js/order/myorder.js"></script>
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="${url}/backend/css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="${url}/backend/css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="${url}/backend/js/plugins/css3-mediaqueries.js"></script>
<![endif]-->
</head>

<body class="withvernav">
	<div class="bodywrapper">
		<div class="topheader">
			<%@include file="../common/backend/mainMenu.jsp"%>
			<div>
				<div class="vernav2 iconmenu" style="margin-top:23px">
					<ul>
						<!-- <li><a href="#formsub" class="editor">Forms</a> <span
							class="arrow"></span>
							<ul id="formsub">
								<li><a href="forms.html">Basic Form</a>
								</li>
								<li><a href="wizard.html">Wizard</a>
								</li>
								<li><a href="editor.html">WYSIWYG</a>
								</li>
							</ul></li> -->
						<!--<li><a href="filemanager.html" class="gallery">File Manager</a></li>-->
						<li><a href="${url}/BackendOrderServlet?action=getOrder" class="wode">我的定单</a>
						</li>
						<c:if test="${sessionScope.user.type==1}">
							<li><a href="javascript:getAllOrder()" class="widgets">定单列表</a>
							</li>
						</c:if>						
					</ul>
					<a class="togglemenu"></a> <br /> <br />

				</div>
			</div>
		</div>
	</div>
	<div class="centercontent tables" id="orderInfo">
		<%@include file="order/myOrder.jsp"%>
	</div>
	
</body>
</html>

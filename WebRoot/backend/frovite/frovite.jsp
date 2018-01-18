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
<title>我的收藏</title>
<link rel="stylesheet" href="${url}/backend/css/style.default.css"
	type="text/css" />
<script type="text/javascript"
	src="${url}/statics/js/vendor/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${url}/backend/js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript"
	src="${url}/backend/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript"
	src="${url}/backend/js/plugins/jquery.cookie.js"></script>
<script type="text/javascript"
	src="${url}/backend/js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="${url}/backend/js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="${url}/backend/js/custom/general.js"></script>
<script type="text/javascript" src="${url}/backend/js/custom/tables.js"></script>
<script type="text/javascript" src="${url}/backend/js/user/user.js"></script>
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

			<%@include file="../../common/backend/mainMenu.jsp"%>

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
						<li><a href="${url}/BackendUser?action=userInfo" class="wode">我的信息</a>
						</li>
						<c:if test="${sessionScope.user.type==1}">
							<li><a href="javascript:getUserList()" class="widgets">用户列表</a>
							</li>
						</c:if>

						<li><a href="${url}/Favorite?action=getFavorite"
							class="calendar">我的收藏夹</a>
						</li>
						<li><a href="support.html" class="support"></a>
						</li>
						<li><a href="typography.html" class="typo">Typography</a>
						</li>
						<li class="current"><a href="tables.html" class="tables">Tables</a>
						</li>
						<li><a href="buttons.html" class="buttons">Buttons &amp;
								Icons</a>
						</li>
						<li><a href="#error" class="error">Error Pages</a> <span
							class="arrow"></span>
							<ul id="error">
								<li><a href="notfound.html">Page Not Found</a>
								</li>
								<li><a href="forbidden.html">Forbidden Page</a>
								</li>
								<li><a href="internal.html">Internal Server Error</a>
								</li>
								<li><a href="offline.html">Offline</a>
								</li>
							</ul></li>
						<li><a href="#addons" class="addons">Addons</a> <span
							class="arrow"></span>
							<ul id="addons">
								<li><a href="newsfeed.html">News Feed</a>
								</li>
								<li><a href="profile.html">Profile Page</a>
								</li>
								<li><a href="productlist.html">Product List</a>
								</li>
								<li><a href="photo.html">Photo/Video Sharing</a>
								</li>
							</ul></li>
					</ul>
					<a class="togglemenu"></a> <br /> <br />

				</div>
			</div>
		</div>
	</div>
	<div class="centercontent tables" id="userInfo">
		<div id="contentwrapper" class="contentwrapper">
			<div class="row" id="favoriteList" style="height:650px">
				<c:forEach var="product" items="${requestScope.favoriteList}">
					<div class="col-lg-4 col-md-4 col-sm-6" style="width:340px">
						<div class="single-product mb-30  white-bg" style="width:300px">
							<div class="product-img pt-20">
								<a
									href="${url}/Product?action=showProductDetail&productId=${product.id}"
									target="_blank"><img src="${url}/files/${product.fileName}"
									alt="${product.name}" /> </a>
							</div>
							<div class="product-content product-i">
								<div class="pro-title">
									<h4>
										<a
											href="${url}/Product?action=showProductDetail&productId=${product.id}"
											target="_blank">${product.name}</a>
									</h4>
								</div>
								<div class="pro-rating ">
									<a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
										class="fa fa-star"></i> </a> <a href="#"><i class="fa fa-star"></i>
									</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
										class="fa fa-star-o"></i> </a>
								</div>
								<div class="price-box">
									<span class="价格">${product.price}</span>
								</div>
							</div>
							<span class="new">new</span>
						</div>
					</div>

				</c:forEach>
			</div>

		</div>
	</div>

</body>
</html>



















<%@include file="../../common/pre/Link.jsp"%>

<%@ include file="../../common/pre/footer.jsp"%>
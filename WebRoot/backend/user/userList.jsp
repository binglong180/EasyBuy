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
<link rel="stylesheet" href="${url}/backend/css/style.default.css"
	type="text/css" />
	<script type="text/javascript" src="${url}/statics/js/vendor/jquery-1.12.4.js"></script>
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
<script type="text/javascript"
	src="${url}/backend/js/user/user.js"></script>
	<div id="contentwrapper" class="contentwrapper">
		<div class="contenttitle2">
			<h3>所有用户列表</h3>
		</div>
		<!--contenttitle-->
		<div class="tableoptions">
			<button class="deletebutton radius3" title="dyntable2" id="deleteUser">删除</button>
			&nbsp;&nbsp;
			<button class="radius3">Apply Filter</button>
		</div>
		<table cellpadding="0" cellspacing="0" border="0"
			class="stdtable stdtablecb" id="dyntable2">
			<colgroup>
				<col class="con0" style="width: 4%"/>
				<col class="con1" />
				<col class="con0" />
				<col class="con1" />
				<col class="con0" />
				<col class="con1" />
			</colgroup>
			<thead>
				<tr>
					<th class="head0 nosort"><input type="checkbox"
						class="checkall" /></th>
					<th class="head0">登录名</th>
					<th class="head1">姓名</th>
					<th class="head0">性别</th>
					<th class="head1">手机</th>
					<th class="head0">邮箱</th>
					<th class="head1">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${requestScope.userList}">
					<tr class="gradeX">
						<td align="center"><span class="center"> <input
								type="checkbox" value="${item.id}"/> </span></td>
						<td class="center">${item.loginName}</td>
						<td class="center">${item.userName}</td>
						<td class="center"><c:if test="${item.sex==1}">男</c:if><c:if test="${item.sex!=1}">女</c:if></td>
						<td class="center">${item.mobile}</td>
						<td class="center">${item.email}</td>
						<td class="center"><a href="" class="edit">编辑</a> &nbsp; <a
							href="" class="delete">删除</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
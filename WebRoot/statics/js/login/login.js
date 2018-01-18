// 登录表单验证
$("#LoginForm").validate({
	rules : {
		loginName : {
			required : true
		},
		password : {
			required : true
		}
	},
	messages : {
		loginName : {
			required : "请输入登录名"
		},
		password : {
			required : "请输入密码",
		}
	},
	onfocusout : function(e) {
		$(e).valid();
	}
});

// 点击页面登录按钮
$("#loginSubmit").click(function() {
	var loginName = $("#loginSubmit").validate().element($("#loginName"));// 输入是否验证通过
	var password = $("#loginSubmit").validate().element($("#password"));// 输入是否验证通过
	if (loginName && password) {
		$("#MyDiv3").hide();
		$("#fade3").hide();
		mpanel5();
		showLogin();// 弹窗
	}
});
//登录页面
$("#loginSubmit2").click(function() {
	var loginName = $("#loginSubmit2").validate().element($("#loginName"));// 输入是否验证通过
	var password = $("#loginSubmit2").validate().element($("#password"));// 输入是否验证通过
	if (loginName && password) {
		$("#MyDiv3").hide();
		$("#fade3").hide();
		mpanel7();
		showLogin();// 弹窗
	}
});
// 登录方法/弹出的登录
function login() {
	var loginName = $("#loginName").val();
	var password = hex_md5($("#password").val());// 进行MD5加密处理
	var loginWay = $("#loginWay").val();
	$.ajax({
		url : contextPath + "/Login",
		method : "post",
		data : {
			loginName : loginName,
			password : password,
			action : "login"
		},
		success : function(jsonStr) {
			var result = eval("(" + jsonStr + ")");
			if (result.status == 1) {
				refreshLogin();
			} else {
				showMessage(result.message);
			}
		}
	});
}

// 登录弹出模态验证窗口
function showLogin() {
	ShowDiv_1('mpanel5', 'fade2');
}

// 登录弹出模态登录窗口
function showToLogin() {
	ShowDiv_1('MyDiv3', 'fade3');
}
// 图片验证
function mpanel5() {
	$("#mpanel5").pointsVerify(
			{
				defaultNum : 5, // 默认的文字数量
				checkNum : 3, // 校对的文字数量
				vSpace : 5, // 间隔
				imgName : [ '../statics/img/images/1.jpg',
						'../statics/img/images/2.jpg' ],
				imgSize : {
					width : '600px',
					height : '200px',
				},
				barSize : {
					width : '600px',
					height : '40px',
				},
				ready : function() {
				},
				success : function() {
					alert(1111111);
					$("#mpanel5").hide();
					$("#fade2").hide();
					login();

					// ......后续操作
				},
				error : function() {
					// alert('验证失败！');
				}

			});
}
function mpanel7() {
	$("#mpanel5").pointsVerify(
			{
				defaultNum : 5, // 默认的文字数量
				checkNum : 3, // 校对的文字数量
				vSpace : 5, // 间隔
				imgName : [ '../statics/img/images/1.jpg',
						'../statics/img/images/2.jpg' ],
				imgSize : {
					width : '600px',
					height : '200px',
				},
				barSize : {
					width : '600px',
					height : '40px',
				},
				ready : function() {
				},
				success : function() {
					$("#mpanel5").hide();
					$("#fade2").hide();
					login2();

					// ......后续操作
				},
				error : function() {
					// alert('验证失败！');
				}

			});
}
//页面登录
function login2() {
	var loginName = $("#loginName").val();
	var password = hex_md5($("#password").val());// 进行MD5加密处理
	var loginWay = $("#loginWay").val();
	$.ajax({
		url : contextPath + "/Login",
		method : "post",
		data : {
			loginName : loginName,
			password : password,
			action : "login"
		},
		success : function(jsonStr) {
			var result = eval("(" + jsonStr + ")");
			if (result.status == 1) {
				location.href=contextPath+"/BackendUser?action=userInfo";
			} else {
				showMessage(result.message);
			}
		}
	});
}
// 判断是否登录
function isLogin() {
	$.ajax({
		url : contextPath + "/Login",
		type : "post",
		data : {
			action : "isLogin"
		},
		success : function(jsonStr) {
			var result=eval("("+jsonStr+")");
			if (result.status == 1) {
				return true;
			}
			return false;
		}
	});
}
function refreshLogin(){
		$.ajax({
			url : contextPath + "/Login",
			type : "post",
			data : {
				action : "refreshLogin"
			},
			success : function(jsonStr) {
				$("#MyHeader").html(jsonStr);
			}
		});
}

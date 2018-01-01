/*
使用进行表单提交验证
 */
$("#MyForm").validate({
	submitHandler : function(form) {
		rigster();
	},
	rules : {
		loginName : {
			required : true
		},
		userName : {
			required : true
		},
		password : {
			required : true,
			minlength : 10,
			maxlength : 20
		},
		affirmPassword : {
			required : true,
			equalTo : "#password"
		},
		mobile : {
			required : true,
			digits : true,
			rangelength : [ 11, 11 ]

		},
		email : {
			required : true,
			email : true,

		}
	},
	messages : {
		loginName : {
			required : "请输入登录名"
		},
		userName : {
			required : "请输入用户名"
		},
		password : {
			required : "请输入密码",
			minlength : "密码不能小于10位",
			maxlength : "密码不能大于20位"
		},
		affirmPassword : {
			required : "请确认密码",
			equalTo : "密码不一致"
		},
		mobile : {
			required : "请输入手机号",
			digits : "必须为数字！",
			rangelength : "请输入11位手机号！"
		},
		email : {
			required : "请输入邮箱",
			email : "邮箱格式错误",
		}
	},
	onfocusout : function(e) {
		$(e).valid();
	}
});
function rigster() {
	var loginName = $("#loginName").val();
	var userName = $("#userName").val();
	var password = hex_md5($("#password").val());
	var affirmPassword = hex_md5($("#affirmPassword").val());
	var sex = $("#sex").val();
	var mobile = $("#mobile").val();
	var email = $("#email").val();
	var way = $("#way").val();
	if ((null != way) && ("" != way) && way == "mobile") {// 手机号注册验证
		if ((null == mobile) || ("" == mobile)) {
			$(".error").html("请输入手机号");
			location.href = contextPath + "/Register?action=toRegister";
		} else if ((null == loginName) || ("" == loginName)) {
			$(".error").html("请输入登录名");
			location.href = contextPath + "/Register?action=toRegister";
		} else if ((null == userName) || ("" == userName)) {
			$(".error").html("请输入用户名");
			location.href = contextPath + "/Register?action=toRegister";
		} else if ((null == affirmPassword) || ("" == affirmPassword)) {
			$(".error").html("密码不一致");
			location.href = contextPath + "/Register?action=toRegister";
		} else if ((null == password) || ("" == password)) {
			$(".error").html("请输入密码");
			location.href = contextPath + "/Register?action=toRegister";
		} else if ((null == sex) || ("" == sex)) {
			$(".error").html("请选择性别");
			location.href = contextPath + "/Register?action=toRegister";
		} else {
			toRegister();
		}
	} else if ((null != way) && ("" != way) && way == "email") {// 邮箱注册验证
		if ((null == email) || ("" == email)) {
			$(".error").html("请输入手机号");
			location.href = contextPath + "/Register?action=toRegister";
		} else if ((null == loginName) || ("" == loginName)) {
			$(".error").html("请输入登录名");
			location.href = contextPath + "/Register?action=toRegister";
		} else if ((null == userName) || ("" == userName)) {
			$(".error").html("请输入用户名");
			location.href = contextPath + "/Register?action=toRegister";
		} else if ((null == affirmPassword) || ("" == affirmPassword)) {
			$(".error").html("密码不一致");
			location.href = contextPath + "/Register?action=toRegister";
		} else if ((null == password) || ("" == password)) {
			$(".error").html("请输入密码");
			location.href = contextPath + "/Register?action=toRegister";
		} else if ((null == sex) || ("" == sex)) {
			$(".error").html("请选择性别");
			location.href = contextPath + "/Register?action=toRegister";
		} else {
			toRegister();
		}
	} else {
		showMessage("请输入信息！");
	}
	function toRegister() {
		$.ajax({
			url : contextPath + "/Register",
			method : "post",
			data : {
				loginName : loginName,
				password : password,
				affirmPassword : affirmPassword,
				userName : userName,
				sex : sex,
				mobile : mobile,
				email : email,
				way : way,
				action : "register"
			},
			success : function(jsonStr) {
				var result = eval("(" + jsonStr + ")");
				if (result.status == 1) {
					window.location.href = contextPath
							+ "/Login?action=toLogin";
				}
				showMessage(result.message);
			}
		});
	}
}
/*
 * 验证用户是否存在
 */
$("#loginName").blur(function() {
	var loginName = $("#loginName").val();
	if (loginName != null && loginName != "") {
		checkUser(loginName);
	}

});
function checkUser(loginName) {
	$.ajax({
		url : contextPath + "/Register",
		data : {
			action : "checkUser",
			loginName : loginName,
		},
		succes : function(data) {
			var result = eval("(" + data + ")");
			if (result.status == 1) {
				$("#checkUser").html("");
			} else {
				$("#checkUser").html("用户已存在");
			}
		}
	});
}

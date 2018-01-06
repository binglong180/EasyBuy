
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
//点击登录按钮
$("#loginSubmit").click(function() {
	var loginName = $("#loginSubmit").validate().element($("#loginName"));// 输入是否验证通过
	var password = $("#loginSubmit").validate().element($("#password"));// 输入是否验证通过
	if (loginName && password) {
		mpanel5();
		showLogin();// 弹窗
		
	}
});
// 登录方法
function login() {
	var loginName = $("#loginName").val();
	var password = hex_md5($("#password").val());// 进行MD5加密处理
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
				showMessage("登录成功,5s后跳转主页");
				setTimeout(function() {
					this.location.href = contextPath + "/Home?action=index";
				}, 5000);
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

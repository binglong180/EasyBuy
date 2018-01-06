//isslider1();
//function isVerification() {
//	if (isVerification == "true") {
//		$("#mobileForm").hide();
//		$("#commonForm").show();
//	}
//}
// 手机号验证
$("#mobileForm").validate({
	submitHandler : function(form) {

	},
	rules : {
		mobile : {
			required : true,
			digits : true,
			rangelength : [ 11, 11 ]
		},
		mobileVerificationCode : {// 验证码
			required : true,
			digits : true,
			rangelength : [ 6, 6 ]
		}
	},
	messages : {
		mobile : {
			required : "请输入手机号",
			digits : "必须为数字！",
			rangelength : "请输入11位手机号！"
		},
		mobileVerificationCode : {
			required : "请输入验证码",
			digits : "验证码格式错误",
			rangelength : "请输入6位的验证码"
		}
	},
	onfocusout : function(e) {
		$(e).valid();
	}
});

// 邮箱验证
$("#emailForm").validate({
	submitHandler : function(form) {

	},
	rules : {
		email : {
			required : true,
			email : true
		}
	},
	messages : {
		email : {
			required : "请输入邮箱",
			email : "请输入正确的邮箱"
		}
	},
	onfocusout : function(e) {
		$(e).valid();
	}
});
// 显示手机邮箱验证验证
function showMobileVerification() {
	// 验证id="mobileForm"的表单中id="mobile"的表单元素
	var mobileFlag = $("#mobileForm").validate().element($("#mobile"));
	if (mobileFlag) {
		$("#mVerification").show();
	} else {
		$("#mVerification").hide();
	}
}
function showEmailVerification() {
	// 验证id="mobileForm"的表单中id="mobile"的表单元素
	var emailFlag = $("#emailForm").validate().element($("#email"));
	if (emailFlag) {
		$("#eVerification").show();
	} else {
		$("#eVerification").hide();
	}
}
// 手机号正确后显示验证框
$("#mobile").blur(function() {
	showMobileVerification();
});
// 邮箱正确后显示验证框
$("#email").blur(function() {
	showEmailVerification();
});
// 表单验证
var commonForm = $("#commonForm").validate({
	submitHandler : function(form) {

	},
	rules : {
		loginName : {
			required : true,
			remote : {
				url : contextPath + "/Register", // 后台处理程序
				type : "post", // 数据发送方式
				dataType : "json", // 接受数据格式
				data : {// 要传递的数据
					loginName : function() {
						return $("#loginName").val();
					},
					action : "checkUserAjax"
				}
			}
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
		}
	},
	messages : {
		loginName : {
			required : "请输入登录名",
			remote : "用户已存在"
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
		}
	},
	onfocusout : function(e) {
		$(e).valid();
	}
});
// 注册用户
function register() {
	var mobileVerificationCode = $("#mobileVerificationCode").val();
	var loginName = $("#loginName").val();
	var userName = $("#userName").val();
	var password = hex_md5($("#password").val());
	var affirmPassword = hex_md5($("#affirmPassword").val());
	var sex = $("#sex").val();
	var mobile = $("#mobile").val();
	var email = $("#email").val();
	var way = $("#way").val();
	$.ajax({
		url : contextPath + "/Register",
		method : "post",
		data : {
			mobileVerificationCode:mobileVerificationCode,
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
				showMessage("注册成功！5s后进入登录");
				setTimeout(function() {
					this.location.href = contextPath + "/Login?action=toLogin";
				}, 5000);
			} else {
				showMessage(result.message);
			}
		}
	});
}

// 验证手机验证码
$("#mobileVerificationCode").blur(
		function() {
			var mobileVerificationFlag = $("#mobileForm").validate().element(
					$("#mobileVerificationCode"));// 输入是否验证通过
			var mobileVerificationCode = $("#mobileVerificationCode").val();// 获取输入的验证码

			if (mobileVerificationFlag) {
				$.ajax({
					url : contextPath + "/Register",
					method : "post",
					data : {
						mobileVerificationCode : mobileVerificationCode,
						action : "checkMobileVerificationCode"
					},
					success : function(jsonStr) {
						var result = eval("(" + jsonStr + ")");
						if (result.status == 1) {

							$("#mobileForm").hide();
							$("#commonForm").show();
						} else {
							showMessage(result.message);
						}
					}
				});
			}

		});

// 发送验证码
$("#mobileVerification").click(function() {
	var mobile = $("#mobile").val();
	$.ajax({
		url : contextPath + "/Register", // 后台处理程序
		method : "post", // 数据发送方式
		data : {// 要传递的数据
			mobile : mobile,
			action : "mobileVerificationSend"
		},
		success : function(jsonStr) {
			var result = eval("(" + jsonStr + ")");
			if (result.status == 1) {
				invokeSettime();
			} else {
				$("#mobileVerification").val("发送失败请重新发送");
			}
		}
	});
});
// 倒计时
function invokeSettime() {
	var countdown = 60;
	settime();
	function settime() {
		if (countdown == 0) {
			$("#mobileVerification").attr("disabled", false);
			$("#mobileVerification").val("免费获取验证码");
			$("#mobileVerification").css({
				"background-color" : "black",
				"color" : "white"
			});
			countdown = 60;
			return;
		} else {
			$("#mobileVerification").attr("disabled", true);
			$("#mobileVerification").val("(" + countdown + ") s 重新发送");
			$("#mobileVerification").css({
				"background-color" : "white",
				"color" : "black"
			});
			countdown--;
		}
		setTimeout(function() {
			settime();
		}, 1000);
	}
}
// 点击注册按钮
$("#registerSubmit").click(
		function() {
			var loginName = $("#commonForm").validate()
					.element($("#loginName"));// 输入是否验证通过
			var password = $("#commonForm").validate().element($("#password"));// 输入是否验证通过
			var affirmPassword = $("#commonForm").validate().element(
					$("#affirmPassword"));// 输入是否验证通过
			var userName = $("#commonForm").validate().element($("#userName"));// 输入是否验证通过
			if (loginName && password && affirmPassword && userName) {
				// 弹窗
				showRegister();
				mpanel6();
			}
		});
// 弹出模态验证窗口
function showRegister() {
	ShowDiv_1('mpanel5', 'fade2');
}
// 图片验证
function mpanel6() {
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
					register();
					// ......后续操作
				},
				error : function() {
					// alert('验证失败！');
				}

			});

}

// //可以滑动滑块了显示滑块
// function isslider1() {
// var loginName = $("#commonForm").validate().element($("#loginName"));//
// 输入是否验证通过
// var password = $("#commonForm").validate().element($("#password"));//
// 输入是否验证通过
// var affirmPassword = $("#commonForm").validate().element(
// $("#affirmPassword"));// 输入是否验证通过
// var userName = $("#commonForm").validate().element($("#userName"));//
// 输入是否验证通过
// if (loginName && loginName && affirmPassword && userName) {
// slider1();
// } else {
// }
// }
// }
// $("#affirmPassword").blur(function() {
// isslider1();
// });
// $("#password").blur(function() {
// isslider1();
// });
// $("#affirmPassword").blur(function() {
// isslider1();
// });
// $("#affirmPassword").blur(function() {
// isslider1();
// });

// $("#commonForm").hover(function() {
// if (commonForm) {
// isslider1();
// }
// });
// 滑块
// function slider1() {
// $("#slider1").slider({
// width : 300, // width
// height : 40, // height
// sliderBg : "rgb(134, 134, 131)", // 滑块背景颜色
// color : "#fff", // 文字颜色
// fontSize : 14, // 文字大小
// bgColor : "#33CC00", // 背景颜色
// textMsg : "按住滑块，拖拽注册", // 提示文字
// successMsg : "注册中...", // 验证成功提示文字
// successColor : "#fff", // 滑块验证成功提示文字颜色
// time : 400, // 返回时间
// callback : function(result) { // 回调函数，true(成功),false(失败)
// register();
// }
// });
// }
/*
 * 验证用户是否存在
 */
// $("#loginName").blur(function() {
// var loginName = $("#loginName").val();
// if (loginName != null && loginName != "") {
// checkUser(loginName);
// }
//
// });
// function checkUser(loginName) {
// $.ajax({
// url : contextPath + "/Register",
// method : "post",
// data : {
// action : "checkUser",
// loginName : loginName,
// },
// success : function(data) {
// var result = eval("(" + data + ")");
// if (result.status < 0) {
// $("#checkUser").html("用户已存在");
// } else {
// $("#checkUser").html("");
// }
// }
// });
// }

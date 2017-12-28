/*
使用进行表单提交验证
 */
$("#MyForm").validate({
	rules : {
		loginName : {
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
		email:{
			required : true,
			email:true
		}
	},
	messages : {
		loginName : {
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
		email:{
			required : "请输入Email",
			email:"Email格式错误"
		}
	},
	onfocusout : function(e) {
		$(e).valid();
	}

})
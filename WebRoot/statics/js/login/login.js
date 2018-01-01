function login() {
	var loginName = $("#loginName").val();
	var password = hex_md5($("#password").val());//进行MD5加密处理
	$.ajax({
		url :contextPath+"/Login",
		method : "post",
		data : {
			loginName : loginName,
			password : password,
			action : "login"
		},
		success : function(jsonStr) {
			var result = eval("(" + jsonStr + ")");
			if (result.status == 1) {
				window.location.href = contextPath + "/Home?action=index";
			} else {
				showMessage(result.message);
			}
		}
	});

}
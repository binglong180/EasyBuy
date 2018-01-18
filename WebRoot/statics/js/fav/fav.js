function setFavorite(productId) {
		$.ajax({
			url : contextPath + "/Favorite",
			type : "POST",
			data : {
				productId : productId,
				action : "setFavorite"
			},
			success : function(jsonStr) {
				var res = eval("(" + jsonStr + ")");
				if (res.status == 1) {
					showMessage("收藏成功");
					refreshCart();
				} else {
					showMessage("您已收藏该商品");
				}
			}
		});
}
// 获得收藏列表
function getFavorite() {
	$.ajax({
		url : contextPath + "/Favorite",
		type : "POST",
		data : {
			action : "refreshFavorite"
		},
		success : function(jsonStr) {
			var res = eval("(" + jsonStr + ")");
			$("#favserch").html("收藏" + jsonStr);
		}
	});
}

function fangIsLogin() {
	$.ajax({
		url : contextPath + "/Login",
		type : "post",
		data : {
			action : "isLogin"
		},
		success : function(jsonStr) {
			var result = eval("(" + jsonStr + ")");
			if (result.status == 1) {
				return true;
			}
			return false;
		}
	});
}
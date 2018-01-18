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
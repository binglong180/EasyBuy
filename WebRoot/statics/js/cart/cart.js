$(function(){
	refreshCart();
});


function addCart(productId, quantity) {
	$.ajax({
		url : contextPath + "/Cart",
		type : "post",
		data : {
			action : "addCart",
			productId : productId,
			quantity : quantity
		},
		success : function(jsonStr) {
			var result = eval("(" + jsonStr + ")");
			if (result.status == 1) {
				showMessage("添加成功");
				refreshCart();
			} else {
				showMessage(result.message);
			}
		}
	});
}
function refreshCart() {
	
	$.ajax({
		url : contextPath + "/Cart",
		type : "post",
		data : {
			action : "refreshCart"
		},
		success : function(jsonStr) {
			$("#secrch").html(jsonStr);
		}
	});
}
function deleteCart(productId){
	$.ajax({
		url : contextPath + "/Cart",
		type : "post",
		data : {
			action : "deleteCart",
			productId:productId
		},
		success : function(jsonStr) {
			$("#secrch").html(jsonStr);
		}
	});
}



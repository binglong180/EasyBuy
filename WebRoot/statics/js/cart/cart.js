$(function() {
	refreshCart();
});
//去购物车
function toCart() {
	location.href = contextPath + "/Cart?action=toCart";
}
//添加购物车
function addCart(productId,obj) {
	var quantity = $("#productQuality").val();
	var stock=$("#productStock").val();
	if(quantity==0||quantity==""||quantity==null){
		quantity=1;
	}
	if(parseInt(quantity)>parseInt(stock)){
		showMessage("库存不足，最多购买"+stock+"件");
		$("#productQuality").val(stock);
		quantity=stock;
		return;
	}
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
// 搜索框中的购物车
function refreshCart() {

	$.ajax({
		url : contextPath + "/Cart",
		type : "post",
		data : {
			action : "refreshCart"
		},
		success : function(jsonStr) {
			$("#MySearch").html(jsonStr);
		}
	});
}
// 刷新列表中的购物车
function refreshCartTable() {

	$.ajax({
		url : contextPath + "/Cart",
		type : "post",
		data : {
			action : "refreshCartTable"
		},
		success : function(jsonStr) {
			$("#MyCart").html(jsonStr);
		}
	});
}
// 删除购物车
function deleteCart(productId) {
	$.ajax({
		url : contextPath + "/Cart",
		type : "post",
		data : {
			action : "deleteCart",
			productId : productId
		},
		success : function() {
			refreshCart();
			refreshCartTable();

		}
	});
}
// 修改购物车
function modifyCart(obj, stock, productId) {
	var quantity = $(obj).val();
	if (quantity > stock) {
		showMessage("当前库存为" + stock + "件");
		$(obj).val(stock);
		quantity = stock;
	}
	if (quantity <= 0) {
		$(obj).val(1);
		quantity = 1;
	}
	$.ajax({
		url : contextPath + "/Cart",
		type : "post",
		data : {
			action : "modifyCart",
			quantity : quantity,
			productId : productId
		},
		success : function(jsonStr) {
			var result = eval("(" + jsonStr + ")");
			if (result.status == 1) {
				refreshCart();
				refreshCartTable();
			} else {
				showMessage(result.message);
			}

		}
	});

};
$(".tableCartQuantity").click(function() {
	refreshCart();
	refreshCartTable();
});
// 清空购物车
$("#emptyCary").click(function() {
	$.ajax({
		url : contextPath + "/Cart",
		type : "post",
		data : {
			action : "emptyCart"
		},
		success : function() {
			refreshCart();
			refreshCartTable();
		}
	});
});

// 去结算
function toSettle() {
	// 判断购物车是否为空
	var isCart=$("#isCart").val();
	if(isCart==0){
		showMessage("购物车为空！");
		return;
	}
	// 判断是否登录
	$.ajax({
		url : contextPath + "/Login",
		type : "post",
		data : {
			action : "isLogin"
		},
		success : function(jsonStr) {
			var result = eval("(" + jsonStr + ")");
			if (result.status == 1) {
				refreshSettle();
			} else {
				showToLogin();
			}
		}
	});
}
//刷新订单页面
function refreshSettle() {
	$.ajax({
		url : contextPath + "/Order",
		type : "post",
		data : {
			action : "toSettle"
		},
		success : function(jsonStr) {
			$("#MyCart").html(jsonStr);
		}
	});
}
//新增地址
function addAddress(){
	var newAddress=$("#newAddress").val();
	var newRemark=$("#newRemark").val();
	if(newAddress==null||newAddress==""){
		showMessage("地址不能为空！");
		return;
	}
	if(newRemark==null||newRemark==""){
		newRemark="新地址";
	}
	$.ajax({
		url:contextPath+"/Order",
		type:"post",
		data:{
			action:"addAddress",
			newAddress:newAddress,
			newRemark:newRemark
		},
		success:function(jsonStr){
			var result=eval("("+jsonStr+")");
			if(result.status==1){
				refreshSettle();
			}else{
				showMessage("新增地址失败！");
			}
		}
	});
}
//生成订单
function addOrder(){
	var addressId=$('input:radio[name="addressId"]:checked').val();
	if(addressId==null||addressId==""){
		showMessage("请选择收货地址");
		return;
	}
	$.ajax({
		url:contextPath+"/Order",
		type:"post",
		data:{
			action:"addOrder",
			addressId:addressId
		},
		success : function(jsonStr) {
			$("#MyCart").html(jsonStr);
			refreshCart();
		}
	});
}













function getOrderDetail(orderId){
	$.ajax({
		url:contextPath+"/BackendOrderServlet",
		type:"POST",
		data:{
			orderId:orderId,
			action:"getOrderDetail",
		},
		success:function(jsonStr){
			$("#orderInfo").html(jsonStr);
		}
	});
}

function getAllOrder(){
	$.ajax({
		url:contextPath+"/BackendOrderServlet",
		type:"POST",
		data:{
			action:"getAllOrder"
		},
		success:function(jsonStr){
			$("#orderInfo").html(jsonStr);
		}
	});
}
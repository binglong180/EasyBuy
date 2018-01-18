function getOrderDetail(orderId){
	$.ajax({
		url:contextPath+"/BackendOrderServlet",
		type:"POST",
		data:{
			orderId:orderId,
			action:"getOrderDetail"
		},
		seccess:function(jsonStr){
			$("#orderInfo").html(jsonStr);
		}
	});
}
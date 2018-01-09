function refreshProductList(currentPage,keyWord,categoryId){
	$.ajax({
		type:"post",
		url:contextPath+"/Product",
		data:{
			currentPage:currentPage,
			keyWord:keyWord,
			categoryId:categoryId,
			action:"refreshProductList"
		},
		success:function(josnStr){
			$("#home").html(josnStr);
		}
	});
}
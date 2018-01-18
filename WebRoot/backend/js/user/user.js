function getUserList() {
	$.ajax({
		url : contextPath + "/BackendUser",
		type : "post",
		data : {
			action : "getUserlist"
		},
		success : function(jsonStr) {
			$("#userInfo").html(jsonStr);
		}
	});
}
// /// 删除表格中的数据/////
$('#deleteUser').click(function() {
	var sel = false;

	var tb = $(this).attr('title'); // get target id of table
	// initialize to false as no selected row
	var ch = $('#' + tb).find('tbody input[type=checkbox]'); // get each
	ch.each(function() {
		if ($(this).is(':checked')) {
			sel = true; // set to true if there is/are selected row
			var flag = confirm("确认删除吗？");
			if (flag) {

				$(this).parents('tr').fadeOut(function() {
					$(this).remove();

					// remove row when animation is finished
				});
				var userId = $(this).val();
				delectUser(userId);
			} else {
				return;
			}
		}
	});
	// in a
	// table

	// check if there is/are selected row in table
	function delectUser(userId) {
		$.ajax({
			url : contextPath + "/BackendUser",
			type : "post",
			data : {
				userId : userId,
				action : "deleteUser"
			},
			success : function(jsonStr) {
				$("#userInfo").html(jsonStr);
			}
		});
	}
	if (!sel) {
		alert('没有选中数据'); // alert to no data selected
	}
});
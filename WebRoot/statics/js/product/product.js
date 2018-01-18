//function refreshProductList(currentPage,keyWord,categoryId){
//	alert(111111);
//	$.ajax({
//		type:"post",
//		url:contextPath+"/Product",
//		data:{
//			currentPage:currentPage,
//			keyWord:keyWord,
//			categoryId:categoryId,
//			action:"refreshProductList"
//		},
//		success:function(josnStr){
//			$("#home").html(josnStr);
//		}
//	});
//}
//$(function(){
//	var totalPages=0;//总页数
//	var curPage=1;//当前页数
//	var middlePage="";//中间页数
//	var Container="";
//	function initPage(totalPages,curPage,middlePage,Container){
//		
//		
//		
//	  var htmlstr = '';
//	  if(curPage > totalPages) {curPage = totalPages}
//	  if(curPage < 0) {curPage = 1}
//	  var curBigPage = Math.ceil(curPage/middlePage)
//	  //当前所在的屏数,如curPage=21,总页数为50页时,屏数就是3（当前是第几屏）实际上是这种形式：Math.ceil(curPage*pageSize/pageSize*perPage)
//	  var totalBigPage = Math.ceil(totalPages/middlePage); //总的屏数
//	  if( totalPages < middlePage){
//	    for(var i=1;i<totalPages+1;i++){
//	      if(i == curPage){
//	        htmlstr += '<span class="currentPage">' + i + '</span>';
//	      }else{
//	        htmlstr += '<a href="javascript:void(0)" mce_href="javascript:void(0)" onclick="initPage('+ totalPages+','+i+','+middlePage +',/''+ container+'/');getPageData('+ i+');return false" class="ajax_page">'+i +'</a>';
//	      }
//	    }
//	  }else{
//	    var curBigStart = (curBigPage-1)*middlePage + 1;
//	    if(curBigPage == totalBigPage){
//	      var curBigEnd = totalPages;
//	    }else{
//	      var curBigEnd = curBigPage * middlePage;
//	    }
//	    if(curBigPage != 1){  //前一屏
//	      var preCurPage = curBigStart - middlePage;
//	      htmlstr += '<a href="javascript:void(0)" mce_href="javascript:void(0)" onclick="initPage('+ totalPages+','+preCurPage+','+middlePage +',/''+ container+'/');getPageData('+ preCurPage +');return false" class="ajax_page">pre</a>';
//	    }
//	    for(var i=curBigStart;i<=curBigEnd;i++){
//	      if(i == curPage){
//	        htmlstr += '<span class="currentPage">' + i + '</span>';
//	      }else{
//	        htmlstr += '<a href="javascript:void(0)" mce_href="javascript:void(0)" onclick="initPage('+ totalPages+','+i+','+middlePage +',/''+ container+'/');getPageData('+ i +');return false" class="ajax_page">' + i + '</a>';
//	      }
//	    }
//	    if(curBigPage != totalBigPage){  //后一屏
//	      var nextCurPage = curBigStart + middlePage;
//	      htmlstr += '<a href="javascript:void(0)" mce_href="javascript:void(0)" onclick="initPage('+ totalPages+','+nextCurPage+','+middlePage +',/''+ container+'/');getPageData('+ nextCurPage + ');return false" class="ajax_page">next</a>';
//	    }
//	  }
//	  document.getElementById('demo').innerHTML = htmlstr
//	}
//	function getPageData(i){
//	  alert('现在取第 '+i+ ' 页数据');  //ajax get data
//	}
//	initPage(50,2,10,'demo');
//	
//})
//
//

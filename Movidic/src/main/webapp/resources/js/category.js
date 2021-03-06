$(document).ready(function() {


    


    (function(){
        getCategoryData(1, "액션");
    })();
    
     (function(){
		getSidebarData()
		
	})();

	(function(){
        getRecentReplie();
    })();
    
	$("#genre").change(function(){
		event.preventDefault();
		genreName= $("#genre option:selected").val();
		console.log(genreName);
		getCategoryData(1,genreName);
		$(".genreTitle").text(genreName);
	})
	
	$(".product__pagination").click(function(){
		event.preventDefault();
		if(event.target.tagName != 'A') return;

		var pageNum = event.target.dataset.pagenum;
	
		console.log(pageNum);		
		getCategoryData(pageNum, $("#genre option:selected").val());
		
		$('html, body').animate({
			scrollTop : 0
		}, 400);
		return false;
	})
	
	function getSidebarData(){
	$.ajax({
		type:"get",
		url:"getSidebarData/",
		dataType:"json",
		contentType: "application/json; charset=UTF-8",
		success:function(data){
			console.log(data);
			sidebarData(data);
		},
		error:function(error){
			console.log(error);
		}
	})
}

    function getCategoryData(pageNum, genreName){


		var sendData={
			"pageNum": pageNum,
			"genreName": genreName
		}
    $.ajax({
        type:'get',
        url:'getCategoryData/',
        dataType:"json",
		data: sendData,
        contentType : "application/json; charset=UTF-8",
        success: function(data){
        
        console.log(data);
            enterData(pageNum,data);
        },
        error: function(error){
            console.log(error);
        }
    })
}

function enterData(pageNum, data){

    var strAdd="";

    $.each(data.list, function(i,el){
		strAdd+='<div class="col-lg-4 col-md-6 col-sm-6">';
		strAdd+='<a href="detail?mno=' + el.mno + '">';
		strAdd+='<div class="product__item">';
		strAdd+='<div class="product__item__pic set-bg" data-setbg="'+el.image+'" style="background-image:url('+el.image+');">';
		strAdd+='<div class="view">';
		strAdd+='<i class="fa fa-eye"></i> '+el.views;
		strAdd+='</div>';
		strAdd+='</div>';
		strAdd+='<div class="product__item__text">';
		strAdd+='<ul>';
		strAdd+='<li>'+el.genre+'</li>';
		strAdd+='</ul>';
		strAdd+='<h5>';
		strAdd+='+el.title+';
		strAdd+='</h5>';
		strAdd+='</div>';
		strAdd+='</div>';
		strAdd+='</a>';
		strAdd+='</div>';
		})

        $(".category_movies").html(strAdd);

		var pageVO=data.pageVO;
		var pageAdd="";
		
		console.log(pageVO);
		
		if(pageVO.prev) pageAdd += '<li><a href="" data-pagenum=' + (pageVO.startPage - 1) + '><span class="glyphicon glyphicon-chevron-left"></span></a></li>';
		for(var i = pageVO.startPage; i < pageVO.endPage + 1; i++ ){
			pageAdd += '<li class="' + (pageNum == i ? 'active' : '') + '"><a href="" data-pagenum="' + i + '">' + i + '</a></li>';
		}
		if(pageVO.next) pageAdd += '<li><a href="" data-pagenum=' + (pageVO.endPage + 1) + '><span class="glyphicon glyphicon-chevron-right"></span></a></li>';
	
		$(".product__pagination").html(pageAdd);
}


function sidebarData(data){
	var strAdd= "";
	console.log(data);
	$.each(data.list, function(i, el){
		strAdd+='<a href="detail?mno='+el.mno+'">';
		strAdd+='<div class="product__sidebar__view__item set-bg mix day years" data-setbg="'+el.image+'" style="background-image:url('+el.image+');">';
		strAdd+='<div class="view">';
		strAdd+='<i class="fa fa-eye"></i>'+el.views+'';
		strAdd+='</div>';
		strAdd+='<h5>';
		strAdd+='<strong style="color:white">'+el.title+'</strong>';
		strAdd+='</h5>';
		strAdd+='</div>';
		strAdd+='</a>';
	})
	$(".filter__gallery").html(strAdd);
}

function getRecentReplie() {
	var list = '';


	$.getJSON('getRecentReplie/', function(data){
		
		$('.recentReplie').empty();
		$(data).each(function() {
			list += '<div class="product__sidebar__comment__item">'
			+ '<div class="product__sidebar__comment__item__pic">'
			+ '<img src= "' + this.image +'"+ alt = "">'
			+ '</div>'
			+ '<div class="product__sidebar__comment__item__text">'
			+ '<ul><li>'
			+ this.genre
			+ '</li></ul>'
			+ '<h5>'
			+ '<a href="detail?mno=' + this.mno + '">'
			+ this.title
			+ '</a>'
			+ '</h5>'
			+ '<span><i class="fa fa-eye"> </i>'
			+ this.views + 'Viewes'
			+ '</span>'
			+ '</div></div>';

			
		});
		$('.recentReplie').html(list);




	});
	

}

})


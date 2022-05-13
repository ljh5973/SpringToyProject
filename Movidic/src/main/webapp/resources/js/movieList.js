$(document).ready(function() {

	(function(){
		getRankData()
		
	})();
    
  (function(){
		getLatelyData()
		
	})();


function getRankData(){

	$.ajax({
	type:"get",
	url:"movie/getRankData/",
	dataType: "json",
	contentType : "application/json; charset=UTF-8",
	success : function(data) {
		enterData(data, "rank_movies");
	},
	error : function(error) {
			console.log(error);
		}
	
	})
};

function getLatelyData(){


	$.ajax({
	type:"get",
	url:"movie/getLatelyData/",
	dataType: "json",
	contentType : "application/json; charset=UTF-8",
	success:function(data){
		enterData(data, "lately_movies");
	},
	error:function(error){
			console.log(error);
		}
	})
};


function enterData(data, type){
	var strAdd= "";
	
	$.each(data.list, function(i,el){
	
		strAdd+='<div class="col-lg-4 col-md-6 col-sm-6">';
		strAdd+='<a href="movie/detail?mno' + el.mno + '">';
		strAdd+='<div class="product__item">';
		strAdd+='<div class="product__item__pic set-bg" data-setbg="'+el.image+'" style="background-image:url('+el.image+');">';
		strAdd+='<div class="comment">';
		strAdd+='<i class="fa fa-comments"></i> 11';
		strAdd+='</div>';
		strAdd+='<div class="view">';
		strAdd+='<i class="fa fa-eye"></i> 9141';
		strAdd+='</div>';
		strAdd+='</div>';
		strAdd+='<div class="product__item__text">';
		strAdd+='<ul>';
		strAdd+='<li>Active</li>';
		strAdd+='<li>Movie</li>';
		strAdd+='</ul>';
		strAdd+='<h5>';
		strAdd+='+el.title+';
		strAdd+='</h5>';
		strAdd+='</div>';
		strAdd+='</div>';
		strAdd+='</a>';
		strAdd+='</div>';
		})
		$("."+type).html(strAdd);
}


})

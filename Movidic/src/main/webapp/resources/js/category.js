$(document).ready(function() {

    console.log($('#genre').val);
    (function(){
        getCategoryData();
    })();
    
    function getCategoryData(){

    $.ajax({
        type:'get',
        url:'movie/getCategoryData/',
        dataType:"json",
        contentType : "application/json; charset=UTF-8",
        success: function(data){
            console.log(data);
        },
        error: function(error){
            console.log(error);
        }
    })
}

function enterData(data){

    var strAdd="";

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

        $(".category_movies").html(strAdd);

}
    
    
})

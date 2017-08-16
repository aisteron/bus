jQuery.noConflict();
(function( $ ) {
  

$(document).ready(function(){

$('.topnav').after('<div class="mobile-menu"><ul></ul></div>');

$('.topnav .menu > li > a').each(function(){
var atext = $(this).text();
var alink = $(this).attr('href');
//var alink = $(this).find('a').attr('href');
//var atext = $(this).find('a').text();

if($(this).parent().hasClass('menu-item-has-children') == false){
    $('.mobile-menu ul').append('<li><a href="'+alink+'">'+atext+'</li>');
}

});

$('.grid-icon').click(function(){
	$('.mobile-menu').fadeToggle("fast");

});

if($(document).width() > 820)
{
	$('.main-lead').attr('data-bg', 'wp-content/themes/bus/src/img/header9.jpg' ).addClass('lazyload');
	$('.keyholder').attr('data-bg', 'wp-content/themes/bus/src/img/bg-5.jpg' ).addClass('lazyload');
}




/* если это главная, то грузим стили для карусели */
if(window.location.href.split('/').length == 4 )
{
function loadCSS( href, before, media ){
    "use strict";
    var ss = window.document.createElement( "link" );
    var ref = before || window.document.getElementsByTagName( "script" )[ 0 ];
    var sheets = window.document.styleSheets;
    ss.rel = "stylesheet";
    ss.href = href;
    ss.media = "only x";
    ref.parentNode.insertBefore( ss, ref );
    function toggleMedia(){
        var defined;
        for( var i = 0; i < sheets.length; i++ ){
            if( sheets[ i ].href && sheets[ i ].href.indexOf( href ) > -1 ){
                defined = true;
            }
        }
        if( defined ){
            ss.media = media || "all";
        }
        else {
            setTimeout( toggleMedia );
        }
    }
    toggleMedia();
    return ss;
}

 loadCSS( "wp-content/themes/bus/src/css/owl/owl.carousel.min.css" ); 	
 loadCSS( "wp-content/themes/bus/src/css/owl/owl.theme.default.min.css" );
 
}    

/* делаем подчеркивание у статей у topnav меню*/

if (window.location.href.split('/').length == 5 && window.location.href.split('/')[3] == "articles")
{
    $("#menu-item-29").addClass('current-menu-item');

    
} 
 /* "зеленение" превьюшек в карусели на главной */  

/*
 $('.img-owl-wrap').on('hover', 'img', function(){

    $(this).css('transform', 'scale(1.1)')

    //$(this).parent().next().fadeToggle();
 });*/


}); // document ready
})(jQuery)
jQuery.noConflict();
(function( $ ) {
  

$(document).ready(function(){

$('.topnav').after('<div class="mobile-menu"><ul></ul></div>');

$('.topnav .menu li a').each(function(){
var atext = $(this).text();
var alink = $(this).attr('href');
//var alink = $(this).find('a').attr('href');
//var atext = $(this).find('a').text();


$('.mobile-menu ul').append('<li><a href="'+alink+'">'+atext+'</li>');
});

$('.grid-icon').click(function(){
	$('.mobile-menu').fadeToggle("fast");

});

if($(document).width() > 820)
{
	$('.main-lead').attr('data-bg', 'wp-content/themes/bus/src/img/header9.jpg' ).addClass('lazyload');
	$('.keyholder').attr('data-bg', 'wp-content/themes/bus/src/img/bg-5.jpg' ).addClass('lazyload');
}


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

/* если это главная, то грузим стили для карусели */
if(window.location.href.split('/').length = 4)
{
 loadCSS( "wp-content/themes/bus/src/css/owl/owl.carousel.min.css" ); 	
 loadCSS( "wp-content/themes/bus/src/css/owl/owl.theme.default.min.css" );
 
}    

   



}); // document ready
})(jQuery)
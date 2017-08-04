jQuery.noConflict();
(function( $ ) {
  

$(document).ready(function(){

$('.topnav').after('<div class="mobile-menu"><ul></ul></div>');

$('.menu li a').each(function(){
var atext = $(this).text();
var alink = $(this).attr('href');
//var alink = $(this).find('a').attr('href');
//var atext = $(this).find('a').text();


$('.mobile-menu ul').append('<li><a href="'+alink+'">'+atext+'</li>');
});

$('.grid-icon').click(function(){
	$('.mobile-menu').fadeToggle("fast");

});



}); // document ready
})(jQuery)
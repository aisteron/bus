jQuery.noConflict();
(function( $ ) {
  

$(document).ready(function(){


/* рисуем мобильное меню */
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

$('.mobile-menu ul li').last().remove();

/* добавляем подменю в мобильное меню */
$('.mobile-menu ul').append('<li class="sub"><a href="#">Транспорт <span>+</span></a><ul style="display:none"></ul></li>');
$('.topnav .menu .menu-item-has-children .sub-menu li a').each(function(){

  var atext = $(this).text();
  var alink = $(this).attr('href');

  $('.mobile-menu ul .sub ul').append('<li><a href="'+alink+'">'+atext+'</li>');


});

/* fadeToggle .sub mobile menu */

$('.mobile-menu ul .sub a').first().click(function(e){
  e.preventDefault();
 $('.mobile-menu ul .sub ul').fadeToggle("slow", "linear");
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


/* отправка данных формы со страницы авто */

$( "#hidden-content-b form" ).on( "submit", function( event ) {
  event.preventDefault();
  //console.log( );
  //console.log($(this).find('input[type="text"]').val());
  //var data =  $( this ).serialize();
  var type = $(this).find('input[name="car"]').val();
  var phone = $(this).find('input[name="phone"]').val();
  var data = {
            action: 'carform',
            car: type,
            phone: phone,
        };   
  //console.log(data);
  $.post( ajaxurl, data, function(response) {
            //alert('Получено с сервера: ' + response);
            if(response == 'ok')
            {
                $('#hidden-content-b form').remove();
                $('#hidden-content-b img').fadeIn('slow');
                $('#hidden-content-b h2').html('Ура! <br> Мы получили ваш запрос!');
                $('#hidden-content-b img').after('<p>Наш менеджер вам скоро перезвонит</p>')
            } else 
            {
                $('#hidden-content-b form').append('<p style="color:red">Что-то пошло не так -(</p>')
            }
    });
});




/* добавить отзыв */
var state = true;

$('.testimonials').click(function(){


if (state)
{
    //add html
    var to_add  = '<div style="display:none;" id="hidden-testimonial">';
        to_add += '<h2>Оставить <span>отзыв</span></h2>';
        to_add += '<form>';
        to_add += '<input type="text" placeholder="Вашe имя" required name="name">';
        to_add += '<textarea id="area" rows="10" cols="45">';
        to_add += '</textarea>';
        to_add += '<input type="submit" value="Отправить">';
        to_add += '</form>';
        to_add += '</div>';
     
     $(this).append(to_add);
    
   
      $('<link/>', {
       rel: 'stylesheet',
       type: 'text/css',
       href: '/wp-content/themes/bus/src/css/owl/jquery.fancybox.min.css'
    }).appendTo('head');    

    $.getScript( "/wp-content/themes/bus/src/js/jquery.fancybox.min.js", function( data, textStatus, jqxhr )
     { 
        console.log( "fancybox js loaded" );

        $.fancybox.open({
        src  : '#hidden-testimonial',
        type : 'inline',
        opts : {
            afterShow : function( instance, current ) {
                console.info( 'done!' );
            }
        }
        });

     });
    
    state = false; 
} else
{
     $.fancybox.open({
        src  : '#hidden-testimonial',
        type : 'inline',
        opts : {
            afterShow : function( instance, current ) {
                console.info( 'done!' );
            }
        }
        });
}

/* отправка отзыва на почту */

$( "#hidden-testimonial form" ).on( "submit", function( event ) {
  event.preventDefault();

  var name = $(this).find('input[name="name"]').val();
  var area = $(this).find('#area').val();
  var data = {
            action: 'testimonial',
            name: name,
            area: area,
        };   
  //console.log(data);

  $.post( ajaxurl, data, function(response) {
            //alert('Получено с сервера: ' + response);
            if(response == 'ok')
            {
                $('#hidden-testimonial form').remove();
                $('#hidden-testimonial h2').html('Ура! <br> Мы получили ваш отзыв!');
                $('.testimonials').remove();
            } else 
            {
                $('#hidden-testimonial form').append('<p style="color:red">Что-то пошло не так -(</p>')
            }
    });
});
    




}); // клик по кнопке "добавить отзыв"


/*  стили для страницы отзывов */
if (window.location.href.split('/').length == 5 && window.location.href.split('/')[3] == "testimonials")
 {
     $("<style type='text/css'> #hidden-testimonial input {display:block; margin: 0.3em auto} .testimonials {background-color: #12c391;background-image: none;background: #12c391;background: linear-gradient(135deg,#12c391 30%,#00d6bd 100%);border: none;padding: 1em;border-bottom: 2px solid green;border-radius: 3px;color: #fff;text-transform: uppercase;font-weight: 700;}</style>").appendTo("head");
 }


 /* клик по кнопкам "сделать заказ" в хидере и футере */

var state = true;

 $('#menu-header-menu > li').last().add(' .f-line-wrap input').on("click", function(e){
 e.preventDefault();

 if (state)
{
    //add html
    var to_add  = '<div style="display:none;" id="hidden_form">';
        to_add += '<h2>Заказать <span>авто</span></h2>';
        to_add += '<form>';
        to_add += '<input type="text" placeholder="Ваш номер телефона" required name="phone">';
        to_add += '<select class="taxonomy">';
        to_add += '<option>Тип транспорта</option>';
        to_add += '</select>';
        to_add += '</form>';
        to_add += '</div>';
     
     $(this).append(to_add);



    /* get taxonomy terms */
    var data = {action: 'get_terms'};

    $.post( ajaxurl, data, function(response) {

            var terms = JSON.parse(response);
            
            
            $.each(terms, function(key, value) {
            //console.log(key + ' ' + value);

            function capitalizeFirstLetter(string)
                {
                    return string.charAt(0).toUpperCase() + string.slice(1);
                }
            $('#hidden_form form select').append('<option data="'+key+'">'+capitalizeFirstLetter(value)+'</option>');    

            });

    }); //get tax data

    $('<link/>', {
       rel: 'stylesheet',
       type: 'text/css',
       href: '/wp-content/themes/bus/src/css/owl/jquery.fancybox.min.css'
       }).appendTo('head');

       $.getScript( "/wp-content/themes/bus/src/js/jquery.fancybox.min.js", function( data, textStatus, jqxhr ) {
          console.log( "Load was performed." );


          $.fancybox.open({
        src  : '#hidden_form',
        type : 'inline',
        opts : {
            afterShow : function( instance, current ) {
                console.info( 'done!' );
            }
        }
        }); //open 

        });  // getScript  

      



    
    state = false; 

}   else
{
    $.fancybox.open({
        src  : '#hidden_form',
        type : 'inline',
        opts : {
            afterShow : function( instance, current ) {
                console.info( 'done!' );
            }
        }
        });
} 

// таксономии и транспорт

var select_created = true;

$('#hidden_form form select').on('change', function() {
    
    if(select_created)
    {
      var to_add = '<select class="car"></select>';
      $('#hidden_form form select.taxonomy').fadeIn().after(to_add);
      $('#hidden_form form select.car').after('<input type="submit" value="Отправить">');
      select_created = false;
    }
  

  if($(this).find(":selected").attr('data')) 
  {
    var data = {action: 'get_car', slug: $(this).find(":selected").attr('data')};

  $.post( ajaxurl, data, function(response) {

    var cars = JSON.parse(response);
    $('#hidden_form form select.car').empty();
        for (var i = cars.length - 1; i >= 0; i--) {
           $('#hidden_form form select.car').append($('<option>', {
                value: i,
                text: cars[i]
            }));
        }


    });
  } else 
  {
    //console.log('no data attr');
    $('#hidden_form form select.car').fadeOut().remove();
    $('#hidden_form form input[type="submit"]').fadeOut().remove();
    select_created = true;
  }

  
}); // добавляем авто в select


/* сохраняем данные формы*/

$('#hidden_form form').on('submit', function(e){
    e.preventDefault();
    data = 
    {
        action: 'main_form',
        phone: $(this).find('input[type="text"]').val(),
        type: $(this).find(".taxonomy :selected").val(),
        model: $(this).find(".car :selected").text()
    }

    //console.log(data);

    // отправка запроса на сохранение
      $.post( ajaxurl, data, function(response) {
            //alert('Получено с сервера: ' + response);
            if(response == 'ok')
            {
                $('#hidden_form form').remove();
                $('#hidden_form h2').html('Ура! <br> Мы получили ваш запрос!');
                $('#hidden_form h2').after('<p>Ожидайте звонка менеджера</p>')    
            } else 
            {
                $('#hidden_form form').append('<p style="color:red">Что-то пошло не так -(</p>')
            }
    });




}); //save data form header + footer

 
 }); // header + footer button


/* подсвечиваем меню на странице авто */

if (window.location.href.split('/').length == 5)
{
  var flink = window.location.href.split('/')[3];

  $('#menu-side-menu li a').each(function(){
  var attr = $(this).attr('href').split('/')[3];
  if (flink == attr)
  {
    $(this).css('color', '#12c391');
  }

  var wo = $('.wpb_wrapper h4:eq(1) a').attr('href').split('/')[1];

  if (flink == wo)
  {
    $('.wpb_wrapper h4:eq(1) a').css('color', '#12c391');
  }

})

}


/* создаем сбоку штуку */

if($(document).width() > 620)
{
  var to_add = '<div class="leftpanel"></div>';
  $('body').after(to_add);
  $('.leftpanel').click(function(){

  $("html, body").animate({ scrollTop: 0 }, "slow");
  });
}


/* переименовываем "Стоимость за час" на "Стоимость за день" */

if(window.location.href.split('/')[3] == 'w-o-driver')
{
$('.chars table tr').first().find('td:eq(1)').text('Стоимость за день');
$('.taxtitle + p').each(function(){
  var str = jQuery(this).text().replace("час", "день");
  jQuery(this).text(str);
});

}


/* косяк с Header Menu исправляем топором */
$('#menu-item-987 a').first().attr('href','#');

}); // document ready
})(jQuery)
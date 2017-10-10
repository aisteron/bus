jQuery.noConflict();
(function( $ ) {
  

$(document).ready(function(){


/* клик на кнопку "добавить" */
if (wp.media) 
{
var customUploader = wp.media({

	title: 'Выберите ваше изображение(-я), сир',
	button:{text: 'Заюзать'},
	multiple:true
});	

$('#addictive-plum .add').click(function(){

if(customUploader)
{
	customUploader.open();
}

});





customUploader.on('select', function(){

	var attachment = customUploader.state().get('selection').map(function(attachment){

		attachment.toJSON();
		return attachment;

	});


           var i;
           var attach = {};

           /* находим максимальное значение data-id = 'img_' у картинок, чтобы потом корректно прибавлять его при добавлении картинок*/

           /*	if ($('#addictive-plum img').length < 1)
           	{
           		var counter = [];
				$('#addictive-plum img').each(function(){
					counter.push(parseInt($(this).attr('data-id').split('img_')[1]));
				});

				var maxImageId = Math.max.apply(Math, counter) + 1;
           	} else {maxImageId = 0}*/
			
			if($('#addictive-plum img').length == 0)
			{
				var maxImageId = 0;
			} else 
			{
				var counter = [];
				$('#addictive-plum img').each(function(){
					counter.push(parseInt($(this).attr('data-id').split('img_')[1]));
				});

				var maxImageId = Math.max.apply(Math, counter) + 1;
			}

           
			console.log('before loop: '+maxImageId);	

           for (i = 0; i < attachment.length; ++i) {

                //sample function 1: add image preview
                $('#addictive-plum .add').after('<img src="' + attachment[i].attributes.url + '" data-id="img_'+maxImageId+'">');
               
				attach["img_"+maxImageId] = attachment[i].attributes.id;
				
				console.log('after loop: '+maxImageId);
				maxImageId++;


            }

            /*добавим в массив post_id */	
            var url =  window.location.href;
    		attach.url = parseInt(/post=([^&]+)/.exec(url)[1]);
    		var action = "my_action";
    		attach.action = 'my_action';

            console.log(attach);


            /* отправляем ajax-ом id-изображений в базу данных */

         	$.post( ajaxurl, attach, function(response) {
			console.log(response);
			});



});
}




/* обработчик для удаления изображения из БД */


//$('#addictive-plum img').click(function(){
	$('#addictive-plum').on('click', 'img', function(){

	remove = {};
	remove.imagekey = $(this).attr('data-id');
	
	/*добавим в массив post_id */	
    var url =  window.location.href;
	remove.postid = parseInt(/post=([^&]+)/.exec(url)[1]);
	
	remove.action = 'remove';


	$(this).slideUp().remove();


	$.post( ajaxurl, remove, function(response) {
	//alert('Получено с сервера: ' + response);
	console.log(response);
	});

});

/* при загрузке страницы мы не сможем вывести изображения аяксом, т.к. в базе у нас лежат только их id, а не url
*  либо нужно использовать REST API, что пока не хочется
*  будет использовать обычный API вордпресса в метабоксе
*
**  на самом деле можно просто обратиться к другой таблице wp_post, там, кажется, что-то лежит
*/

/* Произвольные поля - удаляем "лишнее" */

$('input[value*="img"]').parent().parent().remove();
$('option[value*="img"]').remove();

$('input[value*="custom"]').parent().parent().remove();
$('option[value*="custom"]').remove();

$('input[value*="count"]').parent().parent().remove();
$('option[value*="count"]').remove();

$('input[value*="rating"]').parent().parent().remove();
$('option[value*="rating"]').remove();


/* generate rating */

function generateRating() {
    var min = 4.9,
        max = 4.4,
        highlightedNumber = Math.random() * (max - min) + min;  

    return highlightedNumber.toFixed(1);
};

function generateCount() {
    var min = 9,
        max = 30,
        highlightedNumber = Math.random() * (max - min) + min;
    
    return highlightedNumber.toFixed(0);
};



if ($('input[name="ratingValue"]').val() =="")
{
	var rating = generateRating();
	var count = generateCount();
	$('input[name="ratingValue"]').val(rating);
	$('input[name="ratingCount"]').val(count);

	

	var data = 
	{
		action:'schema',
		rating:rating,
		count:count
	}

	/* обрабатываем URL для получения ID поста*/

	var url =  window.location.href;
	data.id = parseInt(/post=([^&]+)/.exec(url)[1]);

	//console.log(data)

  	$.post( ajaxurl, data, function(response) {
  		 if(response == 'ok')
            {
            	console.log('rating successufully updated');
            }
          else 
          {
          	console.log('что-то пошло не так');
          } 
          //console.log(response); 

    });
}

/* onchange ajax*/

var timer;

function myTimer() {
    var sec = 0
    clearInterval(timer);
    timer = setInterval(function() { 
    console.log(sec--);
    if (sec == -1) {
      clearInterval(timer);
      sendToDb();
     } 
    }   , 1000);

}

$('#meta-box-rating input').bind('keyup mouseup', function () {

myTimer();
$(this).css('background-color', '#eee');

});

function sendToDb()
{

	var rating = $('input[name="ratingValue"]').val();
	var count = $('input[name="ratingCount"]').val();

	var data = 
		{
			action:'updateSchema',
			rating:rating,
			count:count
		}

	/* обрабатываем URL для получения ID поста*/

	var url =  window.location.href;
	data.id = parseInt(/post=([^&]+)/.exec(url)[1]);	

	//console.log(data);


  	$.post( ajaxurl, data, function(response) {
  		 if(response == 'ok')
            {
            	console.log('rating successufully updated');
            	$('#meta-box-rating input').css({
            		'background-color': '#fff',
            		'transition': 'background 0.5s linear'
            			});
            }
          else 
          {
          	console.log('что-то пошло не так');
          } 
          //console.log(response); 

    });
}



/* добавить доп. фильтр */

if(window.location.href.split('?')[1] == 'post_type=car')
{
	var to_add = '<select name="get_tax">';
	to_add += '<option>Выберите класс авто</option>';

	$('#post-query-submit').after(to_add);

	var data = {action: 'get_terms'};
	    $.post( ajaxurl, data, function(response) {

            var terms = JSON.parse(response);
                       
            $.each(terms, function(key, value) {

            function capitalizeFirstLetter(string)
                {
                    return string.charAt(0).toUpperCase() + string.slice(1);
                }
            $('select[name="get_tax"]').append('<option data="'+key+'">'+capitalizeFirstLetter(value)+'</option>');    

            });

    }); //get tax data

	/* рисуем основную таблицу списка авто */
	$('select[name="get_tax"]').on('change', function(){

	var data = {
		action: 'get_car', 
		slug: $(this).find(":selected").attr('data'),
		admin:'admin'
	};	

	
	$.post( ajaxurl, data, function(response) {

    var cars = JSON.parse(response);
    //console.log(cars);

	$('#the-list').empty();
        
    var draw;

    for (var i = cars.length - 1; i >= 0; i--) {

        var name = cars[i][0]; // - name
        var id = cars[i][1]; //- id
        var link = cars[i][2]; //- url

		draw += '<tr id="post-'+id+'" class="iedit">';
		draw +=  '<th class="check-column">';
		draw +=   '<label class="screen-reader-text" for="cb-select-'+id+'">Выбрать '+name+'</label>';
		draw +=   '<input id="cb-select-'+id+'" type="checkbox" name="post[]" value="'+id+'"></th>';
		draw +=  '<td class="title">';
		draw +=   '<strong>';
		draw +=    '<a class="row-title" href="/wp-admin/post.php?post='+id+'&amp;action=edit" >'+name+'</a>';
		draw +=   '</strong></td>';
		draw += '<td><a class="row-title" href="/wp-admin/post.php?post='+id+'&amp;action=edit" >'+link+'</a></td></tr>';

    }

    //draw += '</tbody>';

    $('#the-list').html(draw);


    


    });



	});//обработка клика по типу авто
} //если мы на странице списка авто



}); // document ready
})(jQuery)	
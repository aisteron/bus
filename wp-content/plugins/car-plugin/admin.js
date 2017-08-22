jQuery.noConflict();
(function( $ ) {
  

$(document).ready(function(){


/* клик на кнопку "добавить" */

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





}); // document ready
})(jQuery)	
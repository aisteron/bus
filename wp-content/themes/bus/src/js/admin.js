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

           for (i = 0; i < attachment.length; ++i) {

                //sample function 1: add image preview
                $('#addictive-plum .add').after(
                    '<div class="myplugin-image-preview"><img src="' + 
                    attachment[i].attributes.url + '" ></div>'
                    );


            }

});





}); // document ready
})(jQuery)	
jQuery.noConflict();
(function( $ ) {
$(document).ready(function(){


$('.filter ul li').on('click', function(e){
  e.preventDefault();
  $(this).each(function(){
  	$('.filter ul li').css('border-bottom' ,'1px dashed #111d26');
  });
  $(this).css('border-bottom' ,'1px dashed #12c391');
  $("html, body").animate({ scrollTop: 0 }, "slow");

  var attr = $(this).find('a').attr('href').split('/')[2];

  var stack = JSON.parse(localStorage.getItem(attr));

  stack = JSON.parse(stack);

  $('.flex-container').empty().after('<img src="/wp-content/themes/bus/src/img/spinner.gif" class="spinner">');

  for(var k in stack) {
 //console.log(stack[k]);
 //console.log(stack[k].thumb);
 var to_add ='<div class="flex-item">';
 to_add += '<a href="'+stack[k].link+'" rel="nofollow">';
 to_add += '<img src="'+stack[k].thumb+'" width="230" height="153"></a>';
 to_add += '<p class="taxtitle">';
 to_add += '<a href="'+stack[k].link+'">';
 to_add += stack[k].title + '</a></p>';
 to_add += '<p>от ' + stack[k].ot + ' руб. в час</p>';
 to_add += '<p>кол-во мест: ' + stack[k].capacity + '</p>';

 $('.spinner').fadeOut();

 $('.flex-container').append(to_add).fadeIn(999); 

}


});

/* сформировать local storage объекты */

step1().then(step2).then(step3).then(vip).then(van).then(reset).then(asc).then(desc).then(b1020).then(b10);

function step1() {
    var $dfStep1 = new $.Deferred();

    console.log("step1");
    
    $dfStep1.resolve();
    return $dfStep1.promise();
}

function step2() {
    var $dfStep2 = new $.Deferred();

    console.log("step2");

    $dfStep2.resolve();
    return $dfStep2.promise();
}

function step3() {
    var $dfStep3 = new $.Deferred();

    console.log("step3");

    $dfStep3.resolve();
    return $dfStep3.promise();
}

function vip()
{
	if (localStorage.getItem("vip") === null) {

		var $dfStep1 = new $.Deferred();

		var data = 
		{
			action: 'local',
			name: 'vip'
		}

		$.post( ajaxurl, data, function(response) {
			var stack = JSON.parse(response);

			//console.log(response);

			localStorage.setItem('vip', JSON.stringify(response));

			console.log('vip object placed in localStorage')	
		});



		$dfStep1.resolve();
	    return $dfStep1.promise();

	}

	else
	{
		console.log('vip object already exist');
	}    	

}

function van()
{
	if (localStorage.getItem("van") === null) {

		var $dfStep1 = new $.Deferred();

		var data = 
		{
			action: 'local',
			name: 'van'
		}

		$.post( ajaxurl, data, function(response) {
			var stack = JSON.parse(response);

			//console.log(response);

			localStorage.setItem('van', JSON.stringify(response));

			console.log('van object placed in localStorage')	
		});



		$dfStep1.resolve();
	    return $dfStep1.promise();

	}

	else
	{
		console.log('van object already exist');
	} 

} //func van()

function reset()
{
	if (localStorage.getItem("reset") === null) {

		var $dfReset = new $.Deferred();

		var data = 
		{
			action: 'local',
			name: 'reset'
		}

		$.post( ajaxurl, data, function(response) {
			var stack = JSON.parse(response);

			//console.log(response);

			localStorage.setItem('reset', JSON.stringify(response));

			console.log('reset object placed in localStorage')	
		});



		$dfReset.resolve();
	    return $dfReset.promise();

	}

	else
	{
		console.log('reset object already exist');
	}
}

function asc()
{
	if (localStorage.getItem("asc") === null) {

		var $dfAsc = new $.Deferred();

		var data = 
		{
			action: 'local',
			name: 'asc'
		}

		$.post( ajaxurl, data, function(response) {
			var stack = JSON.parse(response);

			//console.log(response);

			localStorage.setItem('asc', JSON.stringify(response));

			console.log('asc object placed in localStorage')	
		});



		$dfAsc.resolve();
	    return $dfAsc.promise();

	}

	else
	{
		console.log('asc object already exist');
	}
}

function desc()
{
	if (localStorage.getItem("desc") === null) {

		var $dfdesc = new $.Deferred();

		var data = 
		{
			action: 'local',
			name: 'desc'
		}

		$.post( ajaxurl, data, function(response) {
			var stack = JSON.parse(response);

			//console.log(response);

			localStorage.setItem('desc', JSON.stringify(response));

			console.log('desc object placed in localStorage')	
		});



		$dfdesc.resolve();
	    return $dfdesc.promise();

	}

	else
	{
		console.log('desc object already exist');
	}
}


function b1020()
{
	if (localStorage.getItem("b1020") === null) {

		var $dfb1020 = new $.Deferred();

		var data = 
		{
			action: 'local',
			name: 'b1020'
		}

		$.post( ajaxurl, data, function(response) {
			var stack = JSON.parse(response);

			//console.log(response);

			localStorage.setItem('b1020', JSON.stringify(response));

			console.log('b1020 object placed in localStorage')	
		});



		$dfb1020.resolve();
	    return $dfb1020.promise();

	}

	else
	{
		console.log('b1020 object already exist');
	}
}

function b10()
{
	if (localStorage.getItem("b10") === null) {

		var $dfb10 = new $.Deferred();

		var data = 
		{
			action: 'local',
			name: 'b10'
		}

		$.post( ajaxurl, data, function(response) {
			var stack = JSON.parse(response);

			//console.log(response);

			localStorage.setItem('b10', JSON.stringify(response));

			console.log('b10 object placed in localStorage')	
		});



		$dfb10.resolve();
	    return $dfb10.promise();

	}

	else
	{
		console.log('b10 object already exist');
	}
}






}); // document ready
})(jQuery)
<?php
global $post;
global $meta;

 
$tit = get_the_title();
echo '<h1>'.$tit.'</h1>';
echo '<div class="photo_wrap">
	  <img class="lazyload" data-src="'.get_the_post_thumbnail_url($post->ID, 'owl-427').'" alt="'.$tit.'" width="427" height="284">';


echo '<div class="thumb-container">';

/*$meta = get_post_meta($post->ID);
foreach ($meta as $key => $value)
 { 
	
	if(strpos($key,'img_') === 0) //нужны только meta_value у meta_key начинающихся на 'img_'
	{

		$first_value = reset(wp_get_attachment_image_src($value[0]));


		echo '<img class="lazyload" data-src="'.$first_value.'">';

	}
	
}*/

	$meta = get_post_meta($post->ID);

	foreach ($meta as $key => $value)
	 { //выводим изображения в метабокс из БД


		if(strpos($key,'img_') === 0) //нужны только meta_value у meta_key начинающихся на 'img_'
		{
			$val = reset(wp_get_attachment_image_src($value[0], 'owl-273'));
			echo '<img class="lazyload" data-src="'.$val.'" width="139" height="104">';

		}
	}



echo '</div></div>';

function chars()
{
	global $post;
	$meta = get_post_meta($post->ID);

	foreach ($meta as $key => $value)
	 { //выводим изображения в метабокс из БД


		if(strpos($key,'price_') === 0) //нужны только meta_value у meta_key начинающихся на 'img_'
		{
			echo $key, ' - ', $value[0], '<br>';

		}
	}
}







?>
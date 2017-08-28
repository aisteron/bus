<?php 
/*
*
* Template Name: Car Template
* Template Post Type: page, car
* @package WordPress
*
*/
get_header(); ?><div class="wpb_wrapper"><div class="left"><h4>Авто с водителем</h4><?php wp_nav_menu(array('menu' => 'side-menu','container' => ''))?><h4><a href="/w-o-driver/">Авто без водителя</a></h4><h4>Популярные предложения</h4><?php

 // The Query
    $args = array(
                    'post_type' => 'car',
                    'post_status' => 'publish',
                    'posts_per_page'=>5,
                    'order'=>'DESC',
                    'orderby'=>'ID',
                    );

   /* echo '<pre>';
    echo print_r($args);
    echo '</pre>';*/


$query = new WP_Query( $args );

// Цикл
if ( $query->have_posts() ) {
	while ( $query->have_posts() ) {
		$query->the_post();

		$thumb = get_the_post_thumbnail_url($post->ID, 'owl-80-50');
    	echo '
		<div class="section">
	    	<a href="'.get_the_permalink().'" rel="nofollow">
	    	<img class="lazyload" data-src="'.$thumb.'" width="80" height="50"></a>
	    	<div class="desc">
				<p class="pop-title"><a href="'.get_the_permalink().'">'.get_the_title().'</a></p>
				<p class="pop-date">'.get_the_date('n-j-Y').'</p>
			</div>	
    	</div>
    	';

	}
} else {
	// Постов не найдено
}
/* Возвращаем оригинальные данные поста. Сбрасываем $post. */
wp_reset_postdata();



?></div><div class="right"><div class="rightWrap"><div class="photo"><?php
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

			$full = reset(wp_get_attachment_image_src($value[0], 'full'));
			$thumb = reset(wp_get_attachment_image_src($value[0], 'owl-273'));
			$post_id = $post->ID;
			echo 	'<a 
						data-fancybox="gallery_'.$post_id.'"
						href="'.$full.'">
					<img class="lazyload" data-src="'.$thumb.'" width="139" height="104">
					</a>';


		}
	}



echo '</div></div>';

function chars()
{
	global $post;
	$tit = get_the_title();
	$meta = get_post_meta($post->ID);
	echo '<table><tr><td>Аренда</td><td>Стоимость за час</td></tr>';

	foreach ($meta as $key => $value)
	 { //выводим изображения в метабокс из БД


		if(strpos($key,'price_') === 0) //нужны только meta_value у meta_key начинающихся на 'img_'
		{
			//echo $key, ' - ', $value[0], '<br>';
			$key = explode('price_', $key);
			echo '<tr><td>',$key[1],'</td><td>',$value[0], ' руб.</td>';


		}
	}

	echo '</table>';

	echo '<input type="button" value="Заказать авто" data-fancybox data-src="#hidden-content-b">';
	$terms = get_the_terms( get_the_ID(), 'type' );
	//echo 
	if($terms)
		echo '<p class="dashed">Обратно в раздел: 
			  <a href="/'.$terms[0]->slug.'/">'.$terms[0]->name.'</a></p>';
	
	
	/*echo '<pre>';
	print_r($terms);
	echo '</pre>';*/
	echo '<div style="display: none;" id="hidden-content-b">
		<h2>Заказать авто</h2>
		<form>
		 <input type="text" name="car" value="'.$tit.'" disabled>
		 <input type="text" name="phone" placeholder="Ваш телефон" required>
		 <input type="submit" value="Отправить">
		</form>
		<img style="display:none" src="/wp-content/themes/bus/src/img/pony.jpg">
	</div>';
}







?></div><div class="chars"><?php chars(); ?></div></div><div class="rightDesc"><?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>	
<?php the_content();  ?>
<?php endwhile; else: ?>
<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>		</div></div></div><?php get_footer();?>
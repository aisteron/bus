<?php 
/*
*
* Template Name: Car Template
* Template Post Type: page, car
* @package WordPress
*
*/
get_header(); ?><div class="wpb_wrapper"><div class="left"><h4>Авто с водителем</h4><?php wp_nav_menu(array('menu' => 'side-menu','container' => ''))?><h4><a href="/w-o-driver/">Авто без водителя</a></h4><h4>Популярные предложения	</h4></div><div class="right"><div class="rightWrap"><div class="photo"><?php
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







?></div><div class="chars"><?php chars(); ?></div></div><div class="rightDesc"><?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>	
<?php the_content();  ?>
<?php endwhile; else: ?>
<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>		</div></div></div><?php get_footer();?>
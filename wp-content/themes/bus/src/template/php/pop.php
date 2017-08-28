<?php

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



?>
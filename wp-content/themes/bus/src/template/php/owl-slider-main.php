<?php

// задаем нужные нам критерии выборки данных из БД
$query = new WP_Query( array( 'type' => 'van' ) );

// Цикл
echo '<div class="owl-carousel owl-theme">';
if ( $query->have_posts() ) {
	while ( $query->have_posts() ) {
		$query->the_post();

		
		//echo '<li>' . get_the_title() . '</li>';
		echo '<div class="owl-item"><a href="'.get_permalink($post->ID).'" rel="nofollow"><img src="'.get_the_post_thumbnail_url($post->ID).'"></a>';
		echo '<h3><a href="'.get_permalink($post->ID).'">'.get_the_title($post->ID).'</a></h3>';
		echo '<p>от '. get_post_meta( $post->ID, 'от', true ).' руб. в час</p>';
		echo '<p>кол-во мест: '. get_post_meta( $post->ID, 'кол-во мест', true ).'</p></div>';

	}
} else {
	// Постов не найдено
}
echo '</div>';
/* Возвращаем оригинальные данные поста. Сбрасываем $post. */
wp_reset_postdata();


?>
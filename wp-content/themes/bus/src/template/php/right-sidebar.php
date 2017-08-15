<?php

// The Query
$the_query = new WP_Query('cat=1');

// The Loop
if ( $the_query->have_posts() ) {
	echo '<ul>';
	global $post;
	while ( $the_query->have_posts() ) {
		$the_query->the_post();
		echo '<img src="'.get_the_post_thumbnail_url($post->ID, 'thumbnail').'">';
		echo '<li>' . get_the_title() . '</li>';
	}
	echo '</ul>';
	/* Restore original Post Data */
	wp_reset_postdata();
} else {
	// no posts found
}



?>
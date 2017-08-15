<?php 
/*
*
* Template Name: Right Sidebar
*
* @package WordPress
*
*/
get_header(); ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?><div class="wpb_wrapper"><div class="left"><?php the_content(); ?></div><div class="right"><?php

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



?></div></div><?php endwhile; else: ?>
<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>					
<?php get_footer();?>
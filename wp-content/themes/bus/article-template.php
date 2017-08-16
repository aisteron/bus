<?php 
/*
*
* WP Post Template: Article Template
*
* @package WordPress
*
*/
get_header(); ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?><div class="wpb_wrapper"><div class="left"><h1><?php echo the_title(); ?></h1><?php the_content(); ?></div><div class="right"><span class='h3s'>Статьи</span>

<?php
// The Query
$the_query = new WP_Query('cat=1');

// The Loop
if ( $the_query->have_posts() ) {
	echo '<ul>';
	global $post;
	while ( $the_query->have_posts() ) {
		$the_query->the_post();
		echo '<li><a href="'.get_permalink().'"><img src="'.get_the_post_thumbnail_url($post->ID, 'thumbnail').'"><span>' . get_the_title() . '</span></a></li>';
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
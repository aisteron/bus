<?php 
/*
*
* Template Name: Category
*
* @package WordPress
*
*/
get_header(); ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?><div class="wpb_wrapper"><div class="left"><h4>Авто с водителем</h4><?php wp_nav_menu(array('menu' => 'side-menu','container' => ''))?><h4><a href="/w-o-driver/">Авто без водителя</a></h4><h4>Популярные предложения	</h4></div><div class="right"><h1> <?php echo get_the_title() ?></h1><?php the_content(); ?></div></div><?php endwhile; else: ?>
<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>					
<?php get_footer();?>
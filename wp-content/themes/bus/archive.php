<?php 
/*
*
* Template Name: Category
*
* @package WordPress
*
*/
get_header(); ?><div class="wpb_wrapper"><div class="left"><h4>Авто с водителем</h4><?php wp_nav_menu(array('menu' => 'side-menu','container' => ''))?><h4><a href="/w-o-driver/">Авто без водителя</a></h4><h4>Популярные предложения</h4></div><div class="right"><h1> <?php echo single_tag_title(); ?></h1></div><?php 

$terms = get_the_terms( get_the_ID(), 'type' );
                         
echo '<pre>';
print_r($terms);
echo '<pre>';
                         
 ?>   </div><?php get_footer();?>
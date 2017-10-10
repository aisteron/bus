<?php 
/*
*
* Template Name: Category
*
* @package WordPress
*
*/
get_header(); ?><div class="wpb_wrapper" itemscope="itemscope" itemtype="http://schema.org/WebPage"><div class="left"><meta itemprop="headline" content="<?php echo get_post_meta( $post->ID, '_yoast_wpseo_title', true ) ?>"/><meta itemprop="description" content="<?php echo get_post_meta( $post->ID, '_yoast_wpseo_metadesc', true ) ?>"/><h4>Авто с водителем</h4><?php wp_nav_menu(array('menu' => 'side-menu','container' => ''))?><h4><a href="/w-o-driver/">Авто без водителя</a></h4><h4>Популярные предложения</h4><?php

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



?></div><div class="right"><h1 itemprop="name"> <?php echo get_the_title() ?></h1><?php 

//$terms = get_the_terms( get_the_ID(), 'type' );
$slug = get_post_field( 'post_name', get_post() );
                       
/*echo '<pre>';
print_r($slug);
echo '</pre>';*/

/*foreach ($terms as $key) {
$taxname = $key->slug;
$term_id = $key->term_id;

echo '<h1>',the_field('h1', $key ), '</h1>';
}*/



/*echo $taxname;*/




$args = array(
        'post_type' => 'car', 
        'posts_per_page' => -1,
        'orderby'   => 'publish_date',
        'order'     => 'ASC',
        'tax_query' => array(
            array(
                'taxonomy' => 'type',
                'field' => 'slug',
                'terms' => $slug,
            ),
        ),
     );

$loop = new WP_Query($args);

if($loop->have_posts()) {
echo '<div class="flex-container">';

while($loop->have_posts()) : $loop->the_post();
    //echo '<a href="'.get_permalink().'">'.get_the_title().'</a><br>';
    echo '<div class="flex-item">
    <a href="'.get_permalink().'" rel="nofollow">';

    $thumb = get_the_post_thumbnail_url($post->ID, 'owl-273');
    echo '<img class="lazyload" data-src="'.$thumb.'" width="230" height="153"></a> 
	<p class="taxtitle"><a href="'.get_permalink().'">'.get_the_title().'</a></p>';
	echo '<p>от '. get_post_meta( $post->ID, 'от', true ).' руб. в час</p>';

    if (get_post_meta( $post->ID, 'кол-во мест', true )) {
			echo '<p>кол-во мест: '. get_post_meta( $post->ID, 'кол-во мест', true ).'</p></div>';
		}
		else {echo '</div>';}
endwhile;
echo '</div>';  
}

          
 ?>   <div class="desc"><?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>	
<?php the_content(); ?><div class="aggregateRating" itemprop="aggregateRating" itemscope="itemscope" itemtype="http://schema.org/AggregateRating"><img src="/wp-content/themes/bus/src/img/greenstar.png"/><span itemprop="ratingValue"><?php echo get_post_meta( $post->ID, 'rating', true )?> </span>из <span itemprop="ratingCount"><?php echo get_post_meta( $post->ID, 'count', true ) ?> </span>голосовавших	</div><?php endwhile; else: ?>
<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?></div></div><?php if (is_page( 'van' )) {?><div class="filter"><?php echo get_query_var('food'); ?><ul><li> <a href="/van/b10">до 10 мест</a></li><li> <a href="/van/b1020">10 - 20 мест</a></li><li> <a href="/van/desc">сначала дорогие</a></li><li> <a href="/van/asc">сначала дешевые</a></li><li> <a href="/van/van">минивэны</a></li><li> <a href="/van/vip">VIP</a></li><li> <a class="reset" href="/van/reset">+ Сбросить</a></li></ul></div><?php }?></div><?php get_footer();?>
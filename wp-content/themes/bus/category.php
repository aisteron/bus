<?php 
/*
*
* Template Name: Category
*
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



?></div><div class="right"><h1> <?php echo get_the_title() ?></h1><?php 

//$terms = get_the_terms( get_the_ID(), 'type' );
$slug = get_post_field( 'post_name', get_post() );
                       
/*echo '<pre>';
print_r($terms);
echo '</pre>';*/

/*foreach ($terms as $key) {
$taxname = $key->slug;
$term_id = $key->term_id;

echo '<h1>',the_field('h1', $key ), '</h1>';
}*/



/*echo $taxname;*/

$args = array('post_type' => 'car', 'posts_per_page' => -1,
        'tax_query' => array(
            array(
                'taxonomy' => 'type',
                'field' => 'slug',
                'terms' => $slug,
            ),
        ),
     );

$loop = new WP_Query($args);
echo '<div class="flex-container">';
if($loop->have_posts()) {

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
}

echo '</div>'; // flex-container

//echo term_description( $term_id, 'type' );

function filter_callback() {

    //
    $stack = array();

$args = array( 'post_type'=>'car', 'post__in' => array( 381,388,394 ) ); 
$query = new WP_Query( $args );

// Цикл
$i = 0;
if ( $query->have_posts() ) {
    while ( $query->have_posts() ) {
        $query->the_post();
        $stack['car_'.$i] = array('link' => get_permalink(),
                                  'thumb'=> get_the_post_thumbnail_url($post->ID, 'owl-273')
                            );
        $i++;
    }
} else {
    echo 'Постов не найдено';
}
/* Возвращаем оригинальные данные поста. Сбрасываем $post. */

echo '<pre>';
    print_r($stack);
    echo '</pre>';

wp_reset_postdata();


        //echo json_encode($stack);
}

                 
 ?>   <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>	
<?php the_content(); 
filter_callback();
?>
<?php endwhile; else: ?>
<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?></div><div class="filter"><ul><li> <a href="#">до 10 мест</a></li><li> <a href="#">10 - 20 мест</a></li><li> <a href="#">сначала дорогие</a></li><li> <a href="#">сначала дешевые</a></li><li> <a href="#">минивэны</a></li><li> <a href="/van/vip">VIP</a></li></ul><a class="reset" href="#"><img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA1MTIgNTEyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MTIgNTEyOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjE2cHgiIGhlaWdodD0iMTZweCI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTQ3OC4yMTMsMTYzLjI2NGwtNDYuODA1LTgwLjkzOWMtNS4wOTktOS4zNDQtMTYuMTA3LTE0LjIyOS0yNy42NDgtOS45NjNsLTUyLjg4NSwyMS4yNDggICAgYy0xMC4wNDgtNy4yMzItMjAuNjA4LTEzLjM3Ni0zMS41MzEtMTguMzA0TDMxMS4zMDEsMTkuMkMzMDkuOTM2LDguMjU2LDMwMC40NDMsMCwyODkuMjIxLDBoLTkzLjg2NyAgICBjLTExLjIyMSwwLTIwLjcxNSw4LjI1Ni0yMi4wNTksMTkuMDA4bC04LjA2NCw1Ni4yNzdjLTEwLjU4MSw0LjgtMjAuOTcxLDEwLjg1OS0zMS40NjcsMTguMzI1TDgwLjczMSw3Mi4yOTkgICAgYy0xMC4xOTctMy45MjUtMjIuMzU3LDAuNDkxLTI3LjQzNSw5Ljc3MUw2LjQwNSwxNjMuMTU3Yy01LjYzMiw5LjU1Ny0zLjMwNywyMS45NTIsNS40NCwyOC44NjRsNDQuODIxLDM1LjAyOSAgICBjLTAuNzA0LDYuNzYzLTEuMDQ1LDEyLjY3Mi0xLjA0NSwxOC4yODNzMC4zNDEsMTEuNTIsMS4wMjQsMTguMjgzbC00NC44NDMsMzUuMDUxYy04LjU1NSw2Ljc2My0xMC45MDEsMTguNzUyLTUuNDQsMjguNzM2ICAgIGw0Ni44MDUsODAuOTZjNS4wOTksOS4zMjMsMTYuMTI4LDE0LjIwOCwyNy42NjksOS45NDFsNTIuODg1LTIxLjI0OGMxMC4wNDgsNy4yMzIsMjAuNjA4LDEzLjM3NiwzMS41MzEsMTguMzA0bDguMDQzLDU2LjA4NSAgICBjMS4zNDQsMTAuOTY1LDEwLjgzNywxOS4yMjEsMjIuMDU5LDE5LjIyMWg3My41MTVjMy45ODksMCw3LjYxNi0yLjIxOSw5LjQ1MS01LjczOWMxLjgzNS0zLjUyLDEuNTU3LTcuNzY1LTAuNzA0LTExLjAyOSAgICBjLTE2LjMyLTIzLjM4MS0yNC45Ni01MC43OTUtMjQuOTYtNzkuMjMyYzAtMTMuMjY5LDEuOTQxLTI2LjU2LDUuNzgxLTM5LjUwOWMwLjk4MS0zLjMyOCwwLjI5OS02LjkxMi0xLjg1Ni05LjY0MyAgICBjLTIuMTU1LTIuNzA5LTUuNDYxLTQuMTYtOC45MzktNC4wNTNjLTEuMTUyLDAuMDY0LTIuMjgzLDAuMjEzLTUuMTg0LDAuNTc2Yy01My4wNTYsMC05Ni4yMTMtNDMuMTU3LTk2LjIxMy05Ni4yMTMgICAgYzAtNTMuMDU2LDQzLjE1Ny05Ni4yMzUsOTYuMjEzLTk2LjIzNWM1My4wNTYsMCw5Ni4yMTMsNDMuMTU3LDk2LjAyMSw5Ny45ODRjLTAuMTQ5LDEuMTMxLTAuMjk5LDIuMjYxLTAuMzYzLDMuNDEzICAgIGMtMC4xNzEsMy40NzcsMS4zNDQsNi44MDUsNC4wNTMsOC45MzljMi43MzEsMi4xNTUsNi4zMzYsMi43OTUsOS42NDMsMS44NTZjMjAuNzU3LTYuMTg3LDQxLjIxNi03LjY1OSw2NC4zODQtMy40NTYgICAgYzIuODM3LDAuNTEyLDUuOTUyLTAuNzY4LDguMzQxLTIuNTM5YzIuMzY4LTEuNzcxLDMuOTQ3LTUuMDU2LDQuMjY3LThjMC4wNDMtMC4zODQsMC4xNDktMi4xMTIsMC4xNDktMi40OTYgICAgYzAtNi42MzUtMC40NjktMTIuODg1LTEuMDI0LTE4LjI4M0w0NzIuNzUyLDE5MkM0ODEuMzA3LDE4NS4yNTksNDgzLjY1MywxNzMuMjY5LDQ3OC4yMTMsMTYzLjI2NHoiIGZpbGw9IiMxMmMzOTEiLz4KCTwvZz4KPC9nPgo8Zz4KCTxnPgoJCTxwYXRoIGQ9Ik00OTcuOTg5LDI5OC42NjdjLTUuODg4LDAtMTAuNjY3LDQuNzc5LTEwLjY2NywxMC42Njd2MjYuMDI3Yy0xNi4wODUtMjguMzA5LTQ4LjIxMy01OC4wMjctOTYtNTguMDI3ICAgIGMtNjQuNzA0LDAtMTE3LjMzMyw1Mi42MjktMTE3LjMzMywxMTcuMzMzUzMyNi42MTksNTEyLDM5MS4zMjMsNTEyYzUuODg4LDAsMTAuNjY3LTQuNzc5LDEwLjY2Ny0xMC42NjcgICAgYzAtNS44ODgtNC43NzktMTAuNjY3LTEwLjY2Ny0xMC42NjdjLTUyLjkyOCwwLTk2LTQzLjA3Mi05Ni05NnM0My4wNzItOTYsOTYtOTZjNTAuMzA0LDAsNzcuOTczLDQxLjU1Nyw4NC43NzksNjRoLTQyLjExMiAgICBjLTUuODg4LDAtMTAuNjY3LDQuNzc5LTEwLjY2NywxMC42NjdjMCw1Ljg4OCw0Ljc3OSwxMC42NjcsMTAuNjY3LDEwLjY2N2g2NGM1Ljg4OCwwLDEwLjY2Ny00Ljc3OSwxMC42NjctMTAuNjY3di02NCAgICBDNTA4LjY1NiwzMDMuNDQ1LDUwMy44OTksMjk4LjY2Nyw0OTcuOTg5LDI5OC42Njd6IiBmaWxsPSIjMTJjMzkxIi8+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg=="/>Сбросить</a></div></div><?php get_footer();?>
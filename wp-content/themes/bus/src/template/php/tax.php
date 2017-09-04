<?php 

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

echo '</div>';            
 ?>   
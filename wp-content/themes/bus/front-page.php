<?php //critical_css();
get_header(); ?><div class="header-822"><p>Прокат <span>авто</span> в Минске</p></div><div class="lead"><p><span> Онлайн </span> заявка</p><form><input type="text" placeholder="Номер телефона" required="required"/><input type="text" placeholder="Дата проката" required="required"/><input type="submit" value="Оставить заявку"/></form></div><div class="main-lead"></div><div class="second-menu"><?php wp_nav_menu(array('menu' => 'second-menu','container' => '', 'walker' => new My_Walker_Nav_Menu()))?><?php
class My_Walker_Nav_Menu extends Walker_Nav_Menu {

	/**
	 * Starts the element output.
	 *
	 * @since 3.0.0
	 * @since 4.4.0 The {@see 'nav_menu_item_args'} filter was added.
	 *
	 * @see Walker::start_el()
	 *
	 * @param string   $output Passed by reference. Used to append additional content.
	 * @param WP_Post  $item   Menu item data object.
	 * @param int      $depth  Depth of menu item. Used for padding.
	 * @param stdClass $args   An object of wp_nav_menu() arguments.
	 * @param int      $id     Current item ID.
	 */
	public function start_el( &$output, $item, $depth = 0, $args = array(), $id = 0 ) {
		if ( isset( $args->item_spacing ) && 'discard' === $args->item_spacing ) {
			$t = '';
			$n = '';
		} else {
			$t = "\t";
			$n = "\n";
		}
		$indent = ( $depth ) ? str_repeat( $t, $depth ) : '';

		$classes = empty( $item->classes ) ? array() : (array) $item->classes;
		$classes[] = 'menu-item-z' . $item->ID;
		/* изображения страницы */
		$pID = get_post_meta( $item->ID, '_menu_item_object_id', true );
	    $thumb = get_the_post_thumbnail_url($pID);

		$args = apply_filters( 'nav_menu_item_args', $args, $item, $depth );

		$class_names = join( ' ', apply_filters( 'nav_menu_css_class', array_filter( $classes ), $item, $args, $depth ) );
		$class_names = $class_names ? ' class="' . esc_attr( $class_names ) . '"' : '';

		$id = apply_filters( 'nav_menu_item_id', 'menu-item-'. $item->ID, $item, $args, $depth );
		$id = $id ? ' id="' . esc_attr( $id ) . '"' : '';

		// создаем HTML код элемента меню
		$output .= $indent . '<li' . $id . $class_names .'>';

		$atts = array();
		$atts['title']  = ! empty( $item->attr_title ) ? $item->attr_title : '';
		$atts['target'] = ! empty( $item->target )     ? $item->target     : '';
		$atts['rel']    = ! empty( $item->xfn )        ? $item->xfn        : '';
		$atts['href']   = ! empty( $item->url )        ? $item->url        : '';

		$atts = apply_filters( 'nav_menu_link_attributes', $atts, $item, $args, $depth );

		$attributes = '';
		foreach ( $atts as $attr => $value ) {
			if ( ! empty( $value ) ) {
				$value = ( 'href' === $attr ) ? esc_url( $value ) : esc_attr( $value );
				$attributes .= ' ' . $attr . '="' . $value . '"';
			}
		}

		$title = apply_filters( 'the_title', $item->title, $item->ID );
		$title = apply_filters( 'nav_menu_item_title', $title, $item, $args, $depth );

		$item_output = $args->before;
		$item_output .= '<a'. $attributes .'>';
		$item_output .= '<img class="lazyload" data-src="'.$thumb.'">';
		$item_output .= $args->link_before . '<span>'.$title .'</span>' . $args->link_after;
		$item_output .= '</a>';
		$item_output .= $args->after;

		$output .= apply_filters( 'walker_nav_menu_start_el', $item_output, $item, $depth, $args );
	}

} ?></div><div class="keyholder"><div class="text">ВНИМАНИЕ! У НАС СТАЛ ДОСТУПЕН ПРОКАТ<br> АВТОМОБИЛЕЙ БЕЗ ВОДИТЕЛЯ</div><div class="auto"><img class="lazyload" data-src="/wp-content/themes/bus/src/img/wcar.png"/><a href="#"><input type="button" value="Подобрать авто"/></a></div></div><div class="carLineWrap"><h2 class="typical">Микроавтобусы</h2><?php

// задаем нужные нам критерии выборки данных из БД
function getOwl ($arg) {
global $post;
$query = new WP_Query( array( 'type' => $arg ) );

// Цикл
echo '<div class="owl-carousel owl-theme">';
if ( $query->have_posts() ) {
	while ( $query->have_posts() ) {
		$query->the_post();

		
		//echo '<li>' . get_the_title() . '</li>';
		echo '<div class="owl-item"><div class="img-owl-wrap"><a href="'.get_permalink($post->ID).'" rel="nofollow"><img src="'.get_the_post_thumbnail_url($post->ID, 'owl-273').'"></a><div class="hoverMe"></div></div>';
		echo '<h3><a href="'.get_permalink($post->ID).'">'.get_the_title($post->ID).'</a></h3>';
		echo '<p>от '. get_post_meta( $post->ID, 'от', true ).' руб. в час</p>';
		
		if (get_post_meta( $post->ID, 'кол-во мест', true )) {
			echo '<p>кол-во мест: '. get_post_meta( $post->ID, 'кол-во мест', true ).'</p></div>';
		}
		else {echo '</div>';}

	}
} else {
	// Постов не найдено
}
echo '</div>';
/* Возвращаем оригинальные данные поста. Сбрасываем $post. */
wp_reset_postdata();

} 
?><?php getOwl('van');?><p class="dashed">Перейти в раздел: <a href="/van/">Прокат микроавтобусов с водителем</a></p></div><div class="carLineWrap"><h2 class="typical">Прокат авто на свадьбу</h2><?php getOwl('wed');?><p class="dashed">Перейти в раздел: <a href="/wedding/">Прокат авто на свадьбу</a></p></div><div class="carLineWrap"><h2 class="typical">Автобусы</h2><?php getOwl('bus');?><p class="dashed">Перейти в раздел: <a href="/bus/">Прокат пассажирских автобусов</a></p></div><?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<?php the_content(); ?>
<?php endwhile; else: ?>
<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
<?php endif; ?>					
<?php get_footer();?>
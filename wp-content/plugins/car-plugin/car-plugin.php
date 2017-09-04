<?php 
/*
* Plugin Name: WP Car Plugin
* Plugin URI: #
* Description: Car Attributes Plugin
* Author: Mallymkun
* Author URI: #
* Version: 0.0.1
* License: GPLv2
*/

// exit if accessed directly
if (! defined('ABSPATH'))
{
	exit;
}

function load_custom_wp_admin_style() {
    wp_enqueue_script('admin-js', plugins_url( 'admin.js', __FILE__ ), array('jquery'), null, true);
    wp_enqueue_style('admin-css', plugins_url( 'admin.css', __FILE__ ));
}
add_action( 'admin_enqueue_scripts', 'load_custom_wp_admin_style' ); 


add_action('init', 'wpcp_register_post_type');

function wpcp_register_post_type()
{
	register_post_type('car', array(
		'label'  => null,
		'labels' => array(
			'name'               => 'Автомобили', // основное название для типа записи
			'singular_name'      => 'Автомобиль', // название для одной записи этого типа
			'add_new'            => 'Добавить авто', // для добавления новой записи
			'add_new_item'       => 'Добавление авто', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование авто', // для редактирования типа записи
			'new_item'           => 'Новый авто', // текст новой записи
			'view_item'          => 'Смотреть авто', // для просмотра записи этого типа.
			'search_items'       => 'Искать авто', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'parent_item_colon'  => '', // для родителей (у древовидных типов)
			'menu_name'          => 'Транспорт', // название меню
		),
		'description'         => '',
		'public'              => true,
		'publicly_queryable'  => true,
		'exclude_from_search' => false,
		'show_ui'             => true,
		'show_in_menu'        => true, // показывать ли в меню адмнки
		'show_in_admin_bar'   => null, // по умолчанию значение show_in_menu
		'show_in_nav_menus'   => true,
		'show_in_rest'        => null, // добавить в REST API. C WP 4.7
		'rest_base'           => null, // $post_type. C WP 4.7
		'menu_position'       => 26,
		'menu_icon'           => 'dashicons-post-status', 
		//'capability_type'   => 'post',
		//'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
		//'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
		'hierarchical'        => false,
		'supports'            => array('title','editor','thumbnail', 'custom-fields'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
		'taxonomies'          => array(),
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	) );
}

add_action('init', 'wpcp_register_taxonomy');

function wpcp_register_taxonomy()
{
	register_taxonomy('type', array('car'), array(
		'label'                 => '', // определяется параметром $labels->name
		'labels'                => array(
			'name'              => 'Тип транспорта',
			'singular_name'     => 'Тип транспорта',
			'search_items'      => 'Поиск по типу транспорта',
			'all_items'         => 'Все типы транспорта',
			'view_item '        => 'Посмотреть тип',
			'parent_item'       => 'Parent тип',
			'parent_item_colon' => 'Parent тип:',
			'edit_item'         => 'Редактировать тип транспорта',
			'update_item'       => 'Обновить тип транспорта',
			'add_new_item'      => 'Добавить новый тип транспорта',
			'new_item_name'     => 'Название нового типа транспорта',
			'menu_name'         => 'Тип транспорта',
		),
		'description'           => '', // описание таксономии
		'public'                => true,
		'publicly_queryable'    => null, // равен аргументу public
		'show_in_nav_menus'     => true, // равен аргументу public
		'show_ui'               => true, // равен аргументу public
		'show_tagcloud'         => true, // равен аргументу show_ui
		'show_in_rest'          => null, // добавить в REST API
		'rest_base'             => null, // $taxonomy
		'hierarchical'          => false,
		'update_count_callback' => '',
		'rewrite'               => true,
		//'query_var'             => 'type', // название параметра запроса
		'capabilities'          => array(),
		'meta_box_cb'           => null, // callback функция. Отвечает за html код метабокса (с версии 3.8): post_categories_meta_box или post_tags_meta_box. Если указать false, то метабокс будет отключен вообще
		'show_admin_column'     => false, // Позволить или нет авто-создание колонки таксономии в таблице ассоциированного типа записи. (с версии 3.5)
		'_builtin'              => false,
		'show_in_quick_edit'    => null, // по умолчанию значение show_ui
	) );
}


/* добавим метабокс, чтобы хранить изображения */


/**
 * Register meta box(es).
 */

function register_plum_metabox () {
    add_meta_box( 'addictive-plum', __( 'Изображения авто', 'textdomain' ), 'plum_display', 'car' );
}
add_action( 'add_meta_boxes', 'register_plum_metabox' );
 
/**
 * Meta box display callback.
 *
 * @param WP_Post $post Current post object.
 */

function plum_display ( $post ) {

    echo '<a href="#" class="add">Добавить</a><br>';

    global $post;
	$meta = get_post_meta($post->ID);

	foreach ($meta as $key => $value)
	 { //выводим изображения в метабокс из БД


		if(strpos($key,'img_') === 0) //нужны только meta_value у meta_key начинающихся на 'img_'
		{
			echo '<img src="'.wp_get_attachment_url($value[0]).'" data-id="'.$key.'">';

		}
	}
}
 




/* обрабаnываем ajax-запрос на сохранение данных */

add_action('wp_ajax_my_action', 'my_action_add_img');

function my_action_add_img() {



		foreach ($_POST as $key => $value) 
		{

			$id = $_POST['url'];
		
			if(strpos($key,'img_') === 0) //ищем в массиве $_POST поля начинающиеся на img_
			{
				update_post_meta( $id, $key, $_POST[$key] );
			}

		}
		echo 'добавили в таблицу id изображений(-я)';

		wp_die();

}

/*обработчик для удаления изображения из БД поста */

add_action('wp_ajax_remove', 'remove_post_image');

function remove_post_image() 
	{

		$id = $_POST['postid'];
		$imagekey = $_POST['imagekey'];
		delete_post_meta( $id, $imagekey );
	
		echo 'удалили изображение с meta_key = ',$imagekey, ' из базы данных' ;
		wp_die();
	}


/* шод код для вывода списка статей в шаблоне right-sidebar.php */
/* будет использоваться на странице "Статьи" */

//[list]
function articles_list( $atts ){
 
 // The Query
$the_query = new WP_Query('cat=1');

// The Loop
echo '<h1>Статьи</h1>';
if ( $the_query->have_posts() ) {

	global $post;
	while ( $the_query->have_posts() ) {
		$the_query->the_post();
		echo 
		'	<div class="article-item">
			<img src="'.get_the_post_thumbnail_url($post->ID, 'thumbnail').'">
			<div class="desc">
				<h4>' . get_the_title() . '</h4>
				<p>' . get_the_excerpt() . '</p>
				<p><a href="' . get_permalink($post->ID) . '">Подробнее</a></p>
			</div>
			</div>
		';
	}

	/* Restore original Post Data */
	wp_reset_postdata();
} else {
	// no posts found
}

}
add_shortcode( 'list', 'articles_list' );

/* шоткод для вывода авто на произвольных страницах */

// [car id="1,2,3"]
function show_car( $atts ) {   

	$go ='<div class="flex-container">';
	foreach ($atts as $key => $value) {
		
		$id = explode(',', $value);

		//$post_id = get_post($id[]); 
		//$title = $post_id_7->post_title;

		foreach ($id as $key) {
			$post_id = get_post($key);

			$thumb = get_the_post_thumbnail_url($key, 'owl-273');
			$go .= '<div class="flex-item">';
			$go .= '<a href="'.get_permalink($post_id).'" rel="nofollow">';
			$go .= '<img class="lazyload" data-src="'.$thumb.'" width="230" height="173"></a>';
			$go .= '<p class="taxtitle"><a href="'.get_permalink($post_id).'">'.$post_id->post_title.'</a></p>';
			$go .= '<p>от '. get_post_meta( $key, 'от', true ).' руб. в час</p>';

			if (get_post_meta( $key, 'кол-во мест', true )) 
			{
				$go .= '<p>кол-во мест: '. get_post_meta( $key, 'кол-во мест', true ).'</p></div>';
			}
			else 
			{
				$go .= '</div>';}

			}


		
	}
	$go .= '</div>';
	return $go;

}

add_shortcode( 'car', 'show_car' );

/* обрабатываем лидформу на странице авто */

add_action('wp_ajax_carform', 'carform_callback');
add_action('wp_ajax_nopriv_carform', 'carform_callback');

function carform_callback() {

	$car = $_POST['car'];
	$phone = $_POST['phone'];

	//echo $car, ' - ', $phone;
	//print_r($_POST);

	if ($_POST['car'] && $_POST['phone'])
	{
		echo 'ok';

		$to      = 'timotheus@list.ru';
		$subject = 'Заказ с сайта busminsk.by';
		$message = 'Авто: '. $car.'<br>';
		$message .='Телефон: '. $phone;
		$headers = 'From: robot@busminsk.by' . "\r\n" .
		    'Reply-To: robot@busminsk.by' . "\r\n" .
		    'X-Mailer: PHP/' . phpversion();

		mail($to, $subject, $message, $headers);

	} else 
	{
		echo 'error';
	}


	wp_die();
}

/* обрабатываем отзыв */

add_action('wp_ajax_testimonial', 'testimonial_callback');
add_action('wp_ajax_nopriv_testimonial', 'testimonial_callback');

function testimonial_callback() {

	$name = $_POST['name'];
	$area = $_POST['area'];

	//echo $car, ' - ', $phone;
	//print_r($_POST);

	if ($_POST['area'] && $_POST['name'])
	{
		echo 'ok';

		$to      = 'timotheus@list.ru';
		$subject = 'Отзыв с сайта busminsk.by';
		$message = 'Имя: '. $name.'<br>';
		$message .='Отзыв: '. $area;
		$headers = 'From: robot@busminsk.by' . "\r\n" .
		    'Reply-To: robot@busminsk.by' . "\r\n" .
		    'X-Mailer: PHP/' . phpversion();

		mail($to, $subject, $message, $headers);

	} else 
	{
		echo 'error';
	}


	wp_die();
}

/* обрабатываем запрос на первый селект в лидформе*/		
add_action('wp_ajax_get_terms', 'get_terms_callback');
add_action('wp_ajax_nopriv_get_terms', 'get_terms_callback');

function get_terms_callback ()
{

$terms = get_terms( 'type' );
$stack = array();

if( $terms && ! is_wp_error($terms) ){
	
	foreach( $terms as $term ){
		//echo "<li>". $term->name ."</li>";
		//array_push($stack, $term->name);
		$stack[$term->slug] = $term->name;

	}
	

}
echo json_encode($stack);

die();

}

/* получаем список транспорта у термы таксономии */
		
add_action('wp_ajax_get_car', 'get_car_callback');
add_action('wp_ajax_nopriv_get_car', 'get_car_callback');

function get_car_callback()
{
	$slug = $_POST['slug'];

	$args = array('post_type' => 'car',
        'tax_query' => array(
            array(
                'taxonomy' => 'type',
                'field' => 'slug',
                'terms' => $slug,
            ),
        ),
     );

	$loop = new WP_Query($args);
	$stack = array();

	if($loop->have_posts()) {

	while($loop->have_posts()) : $loop->the_post();

		array_push($stack, get_the_title());


	endwhile;
	}

	echo json_encode($stack);

die();

}


/* обрабатываем "главную" лидформу */

add_action('wp_ajax_main_form', 'main_form_callback');
add_action('wp_ajax_nopriv_main_form', 'main_form_callback');

function main_form_callback() {

	$phone = $_POST['phone'];
	$type = $_POST['type'];
	$model = $_POST['model'];

	//echo $car, ' - ', $phone;
	//print_r($_POST);

	if ($_POST['phone'] && $_POST['type'] && $_POST['model'])
	{
		echo 'ok';

		$to      = 'timotheus@list.ru';
		$subject = 'Заявка с сайта busminsk.by';
		$message = 'Телефон: '. $phone.'<br>';
		$message .='Категория: '. $type.'<br>';
		$message .='Модель: '. $model.'<br>';
		$headers = 'From: robot@busminsk.by' . "\r\n" .
		    'Reply-To: robot@busminsk.by' . "\r\n" .
		    'X-Mailer: PHP/' . phpversion();

		mail($to, $subject, $message, $headers);

	} else 
	{
		echo 'error';
	}


	wp_die();
}


/* .filter на странице микроавтобусов. обрабатываем ajax */


add_action('wp_ajax_filter', 'filter_callback');
add_action('wp_ajax_nopriv_filter', 'filter_callback');

function filter_callback() {

    global $post;
    $stack = array();

$args = array( 'post_type'=>'car', 'post__in' => array( 381,388,394 ) ); 
$query = new WP_Query( $args );

// Цикл
$i = 0;
if ( $query->have_posts() ) {
    while ( $query->have_posts() ) {
        $query->the_post();
        $stack['car_'.$i] = array('link' => get_permalink(),
                                  'thumb'=> get_the_post_thumbnail_url($post->ID, 'owl-273'),
                                  'title'=> get_the_title(),
                                  'ot'  =>get_post_meta( $post->ID, 'от', true ),
                                  'capacity' => get_post_meta( $post->ID, 'кол-во мест', true )

                            );
        $i++;
    }
} else {
    echo 'Постов не найдено';
}
/* Возвращаем оригинальные данные поста. Сбрасываем $post. */

    /*echo '<pre>';
    print_r($stack);
    echo '</pre>';*/

    echo json_encode($stack);
    wp_die();

wp_reset_postdata();


        //echo json_encode($stack);
}


/* retieving data for local Storage objects */

add_action('wp_ajax_local', 'local_callback');
add_action('wp_ajax_nopriv_local', 'local_callback');

function local_callback() {


if ($_POST['name'] == 'vip')
{
	global $post;
    $stack = array();

$args = array( 'post_type'=>'car', 'post__in' => array( 381,388,394 ) ); 
$query = new WP_Query( $args );

// Цикл
$i = 0;
if ( $query->have_posts() ) {
    while ( $query->have_posts() ) {
        $query->the_post();
        $stack['car_'.$i] = array('link' => get_permalink(),
                                  'thumb'=> get_the_post_thumbnail_url($post->ID, 'owl-273'),
                                  'title'=> get_the_title(),
                                  'ot'  =>get_post_meta( $post->ID, 'от', true ),
                                  'capacity' => get_post_meta( $post->ID, 'кол-во мест', true )

                            );
        $i++;
    }
} else {
    echo 'Постов не найдено';
}

    echo json_encode($stack);

    wp_die();
	wp_reset_postdata();	


} // if 'vip'


if ($_POST['name'] == 'van')
{

global $post;
$stack = array();

$args = array( 'post_type'=>'car', 
	'post__in' => array( 418,413,410,405,349,344,334,329,324,319 ) ); 
$query = new WP_Query( $args );

// Цикл
$i = 0;
if ( $query->have_posts() ) {
    while ( $query->have_posts() ) {
        $query->the_post();
        $stack['car_'.$i] = array('link' => get_permalink(),
                                  'thumb'=> get_the_post_thumbnail_url($post->ID, 'owl-273'),
                                  'title'=> get_the_title(),
                                  'ot'  =>get_post_meta( $post->ID, 'от', true ),
                                  'capacity' => get_post_meta( $post->ID, 'кол-во мест', true )

                            );
        $i++;
    }
} else {
    echo 'Постов не найдено';
}

    echo json_encode($stack);

    wp_die();
	wp_reset_postdata();


} // if 'van'


if ($_POST['name'] == 'reset')
{

global $post;
$stack = array();

$args = array('post_type' => 'car', 'posts_per_page' => -1,
        'tax_query' => array(
            array(
                'taxonomy' => 'type',
                'field' => 'slug',
                'terms' => 'van',
            ),
        ),
     );

$query = new WP_Query( $args );

// Цикл
$i = 0;
if ( $query->have_posts() ) {
    while ( $query->have_posts() ) {
        $query->the_post();
        $stack['car_'.$i] = array('link' => get_permalink(),
                                  'thumb'=> get_the_post_thumbnail_url($post->ID, 'owl-273'),
                                  'title'=> get_the_title(),
                                  'ot'  =>get_post_meta( $post->ID, 'от', true ),
                                  'capacity' => get_post_meta( $post->ID, 'кол-во мест', true )

                            );
        $i++;
    }
} else {
    echo 'Постов не найдено';
}

    echo json_encode($stack);

    wp_die();
	wp_reset_postdata();


} // if 'reset'

if ($_POST['name'] == 'asc')
{

global $post;
$stack = array();

$args = array(
	'post_type' => 'car', 
	'posts_per_page' => -1,
	'orderby'   => 'meta_value_num',
    'meta_key'  => 'от',
    'order'     => 'ASC',
    'tax_query' => array(
            array(
                'taxonomy' => 'type',
                'field' => 'slug',
                'terms' => 'van',
            ),
        ),
     );

$query = new WP_Query( $args );

// Цикл
$i = 0;
if ( $query->have_posts() ) {
    while ( $query->have_posts() ) {
        $query->the_post();
        $stack['car_'.$i] = array('link' => get_permalink(),
                                  'thumb'=> get_the_post_thumbnail_url($post->ID, 'owl-273'),
                                  'title'=> get_the_title(),
                                  'ot'  =>get_post_meta( $post->ID, 'от', true ),
                                  'capacity' => get_post_meta( $post->ID, 'кол-во мест', true )

                            );
        $i++;
    }
} else {
    echo 'Постов не найдено';
}

    echo json_encode($stack);

    wp_die();
	wp_reset_postdata();


} // if 'asc'

if ($_POST['name'] == 'desc')
{

global $post;
$stack = array();

$args = array(
	'post_type' => 'car', 
	'posts_per_page' => -1,
	'orderby'   => 'meta_value_num',
    'meta_key'  => 'от',
    'order'     => 'DESC',
    'tax_query' => array(
            array(
                'taxonomy' => 'type',
                'field' => 'slug',
                'terms' => 'van',
            ),
        ),
     );

$query = new WP_Query( $args );

// Цикл
$i = 0;
if ( $query->have_posts() ) {
    while ( $query->have_posts() ) {
        $query->the_post();
        $stack['car_'.$i] = array('link' => get_permalink(),
                                  'thumb'=> get_the_post_thumbnail_url($post->ID, 'owl-273'),
                                  'title'=> get_the_title(),
                                  'ot'  =>get_post_meta( $post->ID, 'от', true ),
                                  'capacity' => get_post_meta( $post->ID, 'кол-во мест', true )

                            );
        $i++;
    }
} else {
    echo 'Постов не найдено';
}

    echo json_encode($stack);

    wp_die();
	wp_reset_postdata();


} // if 'DESC'


if ($_POST['name'] == 'b1020')
{

global $post;
$stack = array();

$args = array(
	'post_type' => 'car', 
	'posts_per_page' => -1,
	'orderby'   => 'meta_value_num',
    'meta_key'  => 'кол-во мест',
    'order'     => 'ASC',
	'meta_query' => array(
        array(
            'key'     => 'кол-во мест',
            'value'   => array( 10, 20 ),
            'type'    => 'numeric',
            'compare' => 'BETWEEN',
        ),
    ),
    'tax_query' => array(
            array(
                'taxonomy' => 'type',
                'field' => 'slug',
                'terms' => 'van',
            ),
        ),
     );

$query = new WP_Query( $args );

// Цикл
$i = 0;
if ( $query->have_posts() ) {
    while ( $query->have_posts() ) {
        $query->the_post();
        $stack['car_'.$i] = array('link' => get_permalink(),
                                  'thumb'=> get_the_post_thumbnail_url($post->ID, 'owl-273'),
                                  'title'=> get_the_title(),
                                  'ot'  =>get_post_meta( $post->ID, 'от', true ),
                                  'capacity' => get_post_meta( $post->ID, 'кол-во мест', true )

                            );
        $i++;
    }
} else {
    echo 'Постов не найдено';
}

    echo json_encode($stack);

    wp_die();
	wp_reset_postdata();


} // if 'b1020'

if ($_POST['name'] == 'b10')
{

global $post;
$stack = array();

$args = array(
	'post_type' => 'car', 
	'posts_per_page' => -1,
	'orderby'   => 'meta_value_num',
    'meta_key'  => 'кол-во мест',
    'order'     => 'ASC',
	'meta_query' => array(
        array(
            'key'     => 'кол-во мест',
            'value'   => 10,
            'type'    => 'numeric',
            'compare' => '<=',
        ),
    ),
    'tax_query' => array(
            array(
                'taxonomy' => 'type',
                'field' => 'slug',
                'terms' => 'van',
            ),
        ),
     );

$query = new WP_Query( $args );

// Цикл
$i = 0;
if ( $query->have_posts() ) {
    while ( $query->have_posts() ) {
        $query->the_post();
        $stack['car_'.$i] = array('link' => get_permalink(),
                                  'thumb'=> get_the_post_thumbnail_url($post->ID, 'owl-273'),
                                  'title'=> get_the_title(),
                                  'ot'  =>get_post_meta( $post->ID, 'от', true ),
                                  'capacity' => get_post_meta( $post->ID, 'кол-во мест', true )

                            );
        $i++;
    }
} else {
    echo 'Постов не найдено';
}

    echo json_encode($stack);

    wp_die();
	wp_reset_postdata();


} // if 'b10'




}// local callback

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
	register_taxonomy('taxonomy', array('car'), array(
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
		//'query_var'             => $taxonomy, // название параметра запроса
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
    // Display code/markup goes here. Don't forget to include nonces!
    echo '<a href="#" class="add">Добавить</a>';
}
 
/**
 * Save meta box content.
 *
 * @param int $post_id Post ID
 */

function plum_save( $post_id ) {
    // Save logic goes here. Don't forget to include nonce checks!
}
add_action( 'save_post', 'plum_save' );



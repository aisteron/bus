<?php
remove_action('wp_head', 'wp_resource_hints', 2 );
remove_action('wp_head', 'print_emoji_detection_script', 7);
remove_action('wp_print_styles', 'print_emoji_styles');
remove_action('wp_head', 'rsd_link');
remove_action('wp_head', 'wlwmanifest_link');
remove_action('wp_head', 'wp_generator');

/*rest api remove link*/
function remove_api () {
remove_action( 'wp_head', 'rest_output_link_wp_head', 10 );
remove_action( 'wp_head', 'wp_oembed_add_discovery_links', 10 );
}
add_action( 'after_setup_theme', 'remove_api' );

/*remove rel = canonical*/

remove_action('wp_head', 'rel_canonical');

/*remove rel shortlink */
remove_action('wp_head', 'wp_shortlink_wp_head', 10, 0);

/*function my_deregister_scripts(){
  wp_deregister_script( 'wp-embed' );
}
add_action( 'wp_footer', 'my_deregister_scripts' );*/

/*remove prev nex tags */

remove_action('wp_head', 'adjacent_posts_rel_link_wp_head');

remove_action( 'wp_head', 'feed_links', 2 ); 
remove_action( 'wp_head', 'feed_links_extra', 3 );





# регистрация меню

function register_my_menus() {
  register_nav_menus(
    array(
      'header-menu' => __( 'Header Menu' ),
      'side-menu' => __( 'Side Menu' ),
      'second-menu' => __( 'Second Menu' )
    )
  );
}
add_action( 'init', 'register_my_menus' );

# регистрация размера thumnail

add_image_size( 'owl-273', 230, 173 );


/*добавляем поддержку post thumbnail для second menu главной страницы*/

add_theme_support( 'post-thumbnails' ); 

#	#	#	#	#	#	#	#	#
#								#
# кэширование критического css 	#
#								#
#	#	#	#	#	#	#	#	#

//add_action( 'init', 'critical_css');

/*function critical_css() {

	if(isset($_COOKIE['key']))
	{
		wp_enqueue_style( 'default-style', get_stylesheet_uri() );
		//echo 'куки есть';
	}
	else 
	{
			setcookie("key", 'value');

			echo '<style>';
	          //include( get_template_directory_uri() . '/src/css/critical/critical.css' );
	          include( dirname( __FILE__ ) . '/src/css/critical/critical.css' );
	          
	        echo '</style>'.PHP_EOL;

	        echo '<script>function loadCSS(e,t,n){"use strict";function o(){var t;for(var i=0;i<s.length;i++){if(s[i].href&&s[i].href.indexOf(e)>-1){t=true}}if(t){r.media=n||"all"}else{setTimeout(o)}}var r=window.document.createElement("link");var i=t||window.document.getElementsByTagName("script")[0];var s=window.document.styleSheets;r.rel="stylesheet";r.href=e;r.media="only x";i.parentNode.insertBefore(r,i);o();return r} loadCSS( "'. get_template_directory_uri(). '/style.css" )</script>'.PHP_EOL;

	        
	        //echo 'куков нет, ставим куки';
	        

	}

}*/


# для построения критического css мы отключаем фишку с куками, потому что PhantomJS не может выполнить функцию
# loadCSS почему-то

function wpdocs_vip_scripts() {

	// Move jQuery to footer. 

  wp_scripts()->add_data( 'jquery', 'group', 1 );
  wp_scripts()->add_data( 'jquery-core', 'group', 1 );
  wp_scripts()->add_data( 'jquery-migrate', 'group', 1 );


  wp_enqueue_script('custom', get_template_directory_uri() .'/src/js/custom.js', array('jquery'), null, true);
  wp_enqueue_script('lazy', get_template_directory_uri() .'/src/js/lazysizes.min.js', array('jquery'), null, true);
  wp_enqueue_script('lazy-unveil', get_template_directory_uri() .'/src/js/ls.unveilhooks.min.js', array('jquery'), null, true);


    /* enqueue styles conditions */

    if (is_front_page())
    {
    	wp_enqueue_script('owl-js', get_template_directory_uri() .'/src/js/owl.carousel.min.js', array('jquery'), null, true);
    	wp_enqueue_style( 'dafault-style', get_stylesheet_uri() );
    }

    if (is_page_template( 'full-width.php' ))
    {
    	wp_enqueue_style( 'full-width-style', get_template_directory_uri() .'/src/css/pages/about/about.css' );
    }

    if (is_page_template( 'right-sidebar.php' ))
    {
      wp_enqueue_style( 'right-sidebar-style', get_template_directory_uri() .'/src/css/pages/right-sidebar/right.css' );
    }
    if (is_page_template( 'category.php' ))
    {
      wp_enqueue_style( 'category-style', get_template_directory_uri() .'/src/css/pages/category/category.css' );
    }

    if (is_single())
    {
      wp_enqueue_style( 'article-template-style', get_template_directory_uri() .'/src/css/pages/right-sidebar/right.css' );
    }

   

}

add_action( 'wp_enqueue_scripts', 'wpdocs_vip_scripts' );  


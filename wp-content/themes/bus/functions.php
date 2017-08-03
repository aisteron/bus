<?php
remove_action('wp_head', 'wp_resource_hints', 2 );
remove_action('wp_head', 'print_emoji_detection_script', 7);
remove_action('wp_print_styles', 'print_emoji_styles');
remove_action('wp_head', 'rsd_link');
remove_action('wp_head', 'wlwmanifest_link');
remove_action('wp_head', 'wp_generator');

function my_deregister_scripts(){
  wp_deregister_script( 'wp-embed' );
}
add_action( 'wp_footer', 'my_deregister_scripts' );




# регистрация меню

function register_my_menus() {
  register_nav_menus(
    array(
      'header-menu' => __( 'Header Menu' ),
      'side-menu' => __( 'Side Menu' )
    )
  );
}
add_action( 'init', 'register_my_menus' );



#	#	#	#	#	#	#	#	#
#								#
# кэширование критического css 	#
#								#
#	#	#	#	#	#	#	#	#

//add_action( 'init', 'critical_css');

function critical_css() {

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

}


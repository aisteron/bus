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




add_action( 'wp_enqueue_scripts', 'theme_bus_scripts' );

function theme_bus_scripts() {
    wp_enqueue_style( 'default-style', get_stylesheet_uri() );
    wp_enqueue_style( 'critical', get_template_directory_uri(). '/src/css/critical/critical.css' );
    wp_enqueue_style( 'rest', get_template_directory_uri(). '/src/css/rest.css' );

}
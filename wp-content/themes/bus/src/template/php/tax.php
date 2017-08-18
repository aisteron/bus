<?php 

$terms = get_the_terms( get_the_ID(), 'type' );
                         
echo '<pre>';
print_r($terms);
echo '<pre>';
                         
 ?>   
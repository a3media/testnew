<?php
$utm_medium = isset($_GET['utm_medium']) ? $_GET['utm_medium'] : '' ;
$utm_campaign =  isset($_GET['utm_campaign']) ? $_GET['utm_campaign'] : '' ;
$utm_term = ($_GET['utm_term']) ? $_GET['utm_term'] : '' ;
$utm_source = ($_GET['utm_source']) ? $_GET['utm_source'] : '' ;
$utm_content = ($_GET['utm_content']) ? $_GET['utm_content'] : '' ;
$chank = $modx->getOption('tpl', $scriptProperties, 'utm');
$date = date('d.m.Y H:i:s');
if (isset($_GET['utm_medium'])) {
$output = str_replace('{','', 'medium='.$utm_medium .'&campaign='. $utm_campaign .'&term='. $utm_term .'&source='. $utm_source .'&content='. $utm_content .'&time='. $date);
$output = str_replace('}','', $output);
}else{
    if($modx->resource->get('id') == 586){
         $utm = 'Instagram';
    }
}
return $output;
<?php
$utm_medium = isset($_GET['utm_medium']) ? $_GET['utm_medium'] : '' ;
$utm_campaign =  isset($_GET['utm_campaign']) ? $_GET['utm_campaign'] : '' ;
$utm_term = ($_GET['utm_term']) ? $_GET['utm_term'] : '' ;
$utm_source = ($_GET['utm_source']) ? $_GET['utm_source'] : '' ;
$utm_content = ($_GET['utm_content']) ? $_GET['utm_content'] : '' ;
$chank = $modx->getOption('tpl', $scriptProperties, 'utm');
$date = date('d.m.Y H:i:s');
if (isset($_GET['utm_medium'])) {
$utm = 'Канал кампании: '.$utm_medium .'&Компания: '. $utm_campaign .'&Ключевое слово: '. $utm_term .'&Источник кампании: '. $utm_source .'&Utm_content: '. $utm_content .'&Время заявки: '. $date;
}else{
    if($modx->resource->get('id') == 586){
         $utm = 'Instagram';
    }else{
        $utm = 'Прямой заход';
    }

}
$modx->setPlaceholder('utm', $utm);
$output = $modx->getChunk($chank);
return $output;
<?php
// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');

function marzha($p){
  if($p > 100000){
    return 13000;
  }elseif($p > 50000){
    return 9000;
  }elseif($p > 20000){
    return 8000;
  }else{
    return 6000;
  }
}

//Получаем мини-города из таблицы Для Краснодара

$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/');
/*
foreach ($cities as $key => $city) {
    if(!$city['url']){
      $doc = $modx->getObject('prCitiesItem', $city['id']);
      $doc->set('url', $generator->cleanAlias($city['from'] .'-'. $city['to']));
      $doc->save();
    }
}
*/
$items = $pdo->getCollection('prCitiesItemPrice');
foreach ($items as $key => $item) {
 if(!$modx->getObject('prCitiesItem', $item['id'])){
   $doc1 = $modx->getObject('prCitiesItemPrice',  $item['id']);

   $doc1->remove();
   echo  $item['id'] .  "\n";
     ob_flush();      flush();
 }
}

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


$generator = $modx->newObject('modResource');

$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/');



  $items = $pdo->getCollection('prCitiesItem');

  foreach ($items as $k => $item) {
    if(!$item['update']){
      $doc = $modx->getObject('prCitiesItem', $item['id']);
      $doc->set('update', time());
      $doc->save();
    }


  }

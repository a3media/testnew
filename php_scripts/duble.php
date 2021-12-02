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



  $items = $pdo->getCollection('prCitiesItem', array('from' => 'Березовский', ));

  foreach ($items as $k => $item) {

    $url_items[] =$item['url'];


    //echo $item['id'] . " - " . $item['from'] . " - " . $item['to'] . "\n";
  }

  $counts = array_count_values($url_items);

  $aliases;

  foreach ($counts as $key => $count) {
    if($count > 1){

     $aliases[] = $key;
    }
  }

  $out;


  foreach ($aliases as $key => $alias) {
    $items = $pdo->getCollection('prCitiesItem',  array('url' => $alias) );
    foreach ($items as $k => $item) {

        $out[] = $alias;
        //echo $item['id']  . ",\n";
        echo $item['id']  . " " . $item['from'] . " - " .  $item['to'] . " " . $item['price_1_5t']  . ",\n";
        ob_flush();      flush();



    }
  }

  echo "Всего записей ". count($out) . "\n";

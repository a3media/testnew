<?php
//проверка записей и расстояний по одному городу

// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev1.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');

$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/');

$city = "Красноармейск";

$directions = $pdo->getCollection('prCitiesItem', array('to' => $city));

foreach ($directions as $key => $direction) {
  //$price = $pdo->getArray('prCitiesItemPrice', array('item_id' => $direction['id'] ));
  //$res_from = $pdo->getArray('modResource', array('pagetitle' => $value['from'] ));
  //echo 'Из '.$value['from'].' - текущий id - '.$value['from_id'].' - реальный - '.$res_from['id'].' ввв '.$value['to'].' - текущий id - '.$value['to_id'].' - реальный - '.$res_to['id'];
  //$directions = $pdo->getCollection('prCitiesItem', array('from' => $city['pagetitle']));
  $price = $pdo->getArray('prCitiesItemPrice', array('item_id' => $direction['id'] ));
  echo $direction['from'].' - '.$direction['to'].' - расстояние - '.$price['pr_km'];
  echo "\n";
  ob_flush();
  flush();
}

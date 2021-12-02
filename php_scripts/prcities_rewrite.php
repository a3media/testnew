<?php
// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev1.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');

$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/');

$city = "Отрадный";
$city_name = "Отрадный Самарская область";
$id = 12725;
//$to_id = 12920;
$items = $pdo->getCollection('prCitiesItem', array('to' => $city ));
foreach ($items as $key => $value) {
  //$res_to = $pdo->getArray('modResource', array('pagetitle' => $value['to'] ));
  //$res_from = $pdo->getArray('modResource', array('pagetitle' => $value['from'] ));
  //echo 'Из '.$value['from'].' - текущий id - '.$value['from_id'].' - реальный - '.$res_from['id'].' ввв '.$value['to'].' - текущий id - '.$value['to_id'].' - реальный - '.$res_to['id'];

  //echo "\n";
  //ob_flush();
  //flush();

  $item = $modx->getObject('prCitiesItem', $value['id']);
  $item->set('to_id',$id);
  $item->set('to',$city_name);
  $item->save();

}

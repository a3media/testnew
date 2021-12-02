<?php
//скрипт фиксит id городов в prCitiesItem, берет json со списком городов и проходит по соответствующим записям

// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev1.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');

$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/');


$cities = '{"12852":{"city":"\u0427\u0435\u0440\u043d\u043e\u0433\u043e\u043b\u043e\u0432\u043a\u0430","errors":478},"12879":{"city":"\u043f\u0433\u0442 \u0427\u0435\u0440\u043d\u043e\u043c\u043e\u0440\u0441\u043a\u043e\u0435","errors":1630},"12904":{"city":"\u0441\u0435\u043b\u043e \u0427\u0438\u0441\u0442\u0435\u043d\u044c\u043a\u043e\u0435","errors":1630}}';

//$to_id = 12920;
foreach (json_decode($cities,true) as $from_id => $from_city) {
  echo $from_city['city'];
  echo "\n";
  ob_flush();
  flush();
  $items = $pdo->getCollection('prCitiesItem', array('from' => $from_city['city'] ));
  foreach ($items as $key => $value) {
    $res_to = $pdo->getArray('modResource', array('pagetitle' => $value['to'] ));
    $item = $modx->getObject('prCitiesItem', $value['id']);
    $item->set('to_id',$res_to['id']);
    $item->set('from_id',$from_id);
    $item->save();

  }

}

/*
$items = $pdo->getCollection('prCitiesItem', array('from' => $city ));
foreach ($items as $key => $value) {
  $res_to = $pdo->getArray('modResource', array('pagetitle' => $value['to'] ));
  //$res_from = $pdo->getArray('modResource', array('pagetitle' => $value['from'] ));
  echo 'Из '.$value['from'].' - текущий id - '.$value['from_id'].' - реальный - '.$res_from['id'].' ввв '.$value['to'].' - текущий id - '.$value['to_id'].' - реальный - '.$res_to['id'];

  echo "\n";
  ob_flush();
  flush();

  //$item = $modx->getObject('prCitiesItem', $value['id']);
  //$item->set('to_id',$res_to['id']);
  //$item->set('from_id',$id);
  //$item->save();

}
*/

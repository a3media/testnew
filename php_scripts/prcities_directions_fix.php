<?php
//ФИКС НАПРАВЛЕНИЙ (если была опечатка в названии города или типа того)

// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');

$generator = $modx->newObject('modResource');

$city = "Новосибрск"; //Название которое будем исправлять
$city_fix = "Новосибирск"; //правильное название
$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/');
//$main = $pdo->getArray('prCitiesItem', array('from' => $from_city, 'to' => $to_city ));
$directions = $pdo->getCollection('prCitiesItem', array('to' => $city, ), array());
//$main_price = $pdo->getArray('prCitiesItemPrice', array('item_id' => $main['id'] ));
//print_r($directions);
$res_to = $pdo->getObject('modResource',  array('pagetitle:=' => $city_fix, ));
foreach ($directions as $key => $direction) {
$old_item = $modx->getObject('prCitiesItem' , array('id' => $direction['id']));
$old_item->set('url', $generator->cleanAlias($direction['from'].'-'. $city_fix));
$old_item->set('to', $city_fix);
$old_item->set('to_id', $res_to['id']);
$old_item->save();
}
//print_r($directions);

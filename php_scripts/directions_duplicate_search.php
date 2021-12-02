<?php
//ПРОВЕРКА НА НАЛИЧИЕ ДУБЛИКАТОВ НАПРАВЛЕНИЙ В БАЗЕ

// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');

$city = "Новосибирск"; //город

$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/');
$directions = $pdo->getCollection('prCitiesItem', array('to' => $city, ), array('select' => 'id,url'));
//echo count($directions)."\n";
//ob_flush();
//flush();
foreach ($directions as $key => $direction) {
  $duplicates = $pdo->getCollection('prCitiesItem', array('url' => $direction['url'], ), array('select' => 'id,url'));
  //echo $key."\n";
  //ob_flush();
  //flush();
  if (count($duplicates) > 1) {
    print_r ($duplicates);
    ob_flush();
    flush();
  }
}

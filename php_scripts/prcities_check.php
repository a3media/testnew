<?php
//ДОАВЛЕНИЕ НАПРАВЛЕНИЙ ДО РАЙОННЫХ ЦЕНТРОВ ИЗ КРУПНОГО ГОРОДА

// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');

$from_city = "Новосибирск"; //город из которого будем ехать
$to_city = "Абаза"; //город до которого будем ехать

$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/');
$main = $pdo->getArray('prCitiesItem', array('from' => $from_city, 'to' => $to_city ));
$main_price = $pdo->getArray('prCitiesItemPrice', array('item_id' => $main['id'] ));
print_r($main);
print_r($main_price);

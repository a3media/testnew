<?php
//ЧЕК СПИСКА НАПРАВЛЕНИЙ ПО ОПРЕДЕЛЕННОМУ ПРИЗНАКУ

// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');

$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/');
//$main = $pdo->getArray('prCitiesItem', array('from' => $from_city, 'to' => $to_city ));
$main = $pdo->getCollection('prCitiesItem', array('price_1_5t' => '6000', ), array());
//$main_price = $pdo->getArray('prCitiesItemPrice', array('item_id' => $main['id'] ));
print_r($main);
echo 'Кол-во хуйни - '.count($main);

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

$city = "Красноармейск Саратовская область";
$id = 814;
//$to_id = 12920;
$items = $pdo->getCollection('prCitiesItem', array('to_id' => $id ));
foreach ($items as $key => $value) {
  $item = $modx->getObject('prCitiesItem', $value['id']);
  $item->set('to',$city);
  $item->save();
}

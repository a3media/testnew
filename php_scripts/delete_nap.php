<?php
// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');



//Получаем мини-города из таблицы Для Краснодара

$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/');
/*
foreach ($cities as $key => $city) {
    if(!$city['url']){
      $doc = $modx->getObject('prCitiesItem', $city['id']);
      $doc->set('url', $generator->cleanAlias($city['from'] .'-'. $city['to']));
      $doc->save();
    }
}
*/


$docs = $pdo->getCollection('prCitiesItem', array('price_1_5t' => 6000, ));
foreach ($docs as $key => $doc) {

    $id = $doc['id'];  
    $doc = $modx->getObject('prCitiesItem', $id);

    $doc->remove();

    $doc1 = $modx->getObject('prCitiesItemPrice', $id);

    $doc1->remove();


}

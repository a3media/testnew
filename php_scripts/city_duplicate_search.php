<?php
//ПРОВЕРКА НА НАЛИЧИЕ ГОРОДОВ В БАЗЕ и их ДУБЛИКАТОВ

// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');

$from_city = "Сургут"; //город из которого будем ехать

//получаем  города до которых будем считать
$params = array('table' => 'https://docs.google.com/spreadsheets/d/1r9MGw4_E3-EeacCBh3nIUSEnl-qxJQo1R50Eov_YGH8/', 'range' => 'Все города с КМ', 'ignore' => 1);

$cities = $modx->runSnippet('GoogleSheets', $params);

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

foreach ($cities as $key => $city) {

  $items = $pdo->getCollection('modResource', array('pagetitle:LIKE' => $city['pagetitle']), array('select' => 'id,pagetitle'));
  if (count($items) == 0) {
    echo 'По городу - '.$city['pagetitle'].' - ничего не найдено, проверяем на совпадения и изменение названия';
    ob_flush();
    flush();
    $items = $pdo->getCollection('modResource', array('pagetitle:LIKE' => '%'.$city['pagetitle'].'%'), array('select' => 'id,pagetitle'));
    echo ' - найдено ресурсов - '.count($items);
    echo "\n";
    print_r($items);
    echo "\n";
    ob_flush();
    flush();

  }
}

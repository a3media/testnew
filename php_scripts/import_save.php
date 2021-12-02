<?php
// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');

$modx->switchContext('mgr');
$pdo = $modx->getService('pdoFetch');
$modx->setLogLevel(4);
$params = array('table' => 'https://docs.google.com/spreadsheets/d/1r9MGw4_E3-EeacCBh3nIUSEnl-qxJQo1R50Eov_YGH8/', 'range' => 'новые', 'ignore' => 1);

$items = $modx->runSnippet('GoogleSheets', $params);
$generator = $modx->newObject('modResource');

$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/');

foreach ($items as $k => $item) {
    $out_item['url'] = $generator->cleanAlias($item['from'] .'-'. $item['to']);

    if(!($modx->getObject('prCitiesItem' , array('url' => $out_item['url'] )))){


    $out_item['from'] = $item['from'];
    //узнаем ресурс родитель и записываем его айди в базу
    $res_from = $pdo->getObject('modResource',  array('pagetitle:=' => $item['from'], ));
    $out_item['from_id'] = $res_from['id'];

    $out_item['to'] = $item['to'];
    //узнаем ресурс родитель и записываем его айди в базу
    $res_from = $pdo->getObject('modResource',  array('pagetitle:=' => $item['to'], ));

    $out_item['to_id'] = $res_from['id'];

    $out_item['price_1_5t'] = $item['price_1_5t'];
    $out_item['price_3t'] = $item['price_3t'];
    $out_item['price_5t'] = $item['price_5t'];
    $out_item['price_10t'] = $item['price_10t'];
    $out_item['price_dogruz'] = $item['price_dogruz'];

    $out_item['description'] = '';
    $out_item['way'] = 0;

    $out_price['pr_km'] = $item['km_pr'];

    $out_price['pr_1_5t'] = $item['pr_1_5t'];
    $out_price['pr_3t'] = $item['pr_3t'];
    $out_price['pr_5t'] = $item['pr_5t'];
    $out_price['pr_10t'] = $item['pr_10t'];

    $out_price['ob_km'] = $item['ob_km'];
    $out_price['ob_1_5t'] = $item['ob_1_5t'];
    $out_price['ob_3t'] = $item['ob_3t'];
    $out_price['ob_5t'] = $item['ob_5t'];
    $out_price['ob_10t'] = $item['ob_10t'];

    $out_price['sr_km'] = $item['sr_km'];
    $out_price['marzha_1_5t'] = $item['marzha_1_5t'];
    $out_price['marzha_3t'] = $item['marzha_3t'];
    $out_price['marzha_5t'] = $item['marzha_5t'];
    $out_price['marzha_10t'] = $item['marzha_10t'];
    $out_price['marzha_dogruz'] = $item['marzha_dogruz'];


    $doc = $modx->newObject('prCitiesItem', $out_item);

    $price = $modx->newObject('prCitiesItemPrice', $out_price);


    $price->addOne($doc);


    $price->save();

    echo "Создал запись " . $item['from']."-" . $item['to'] ." \n";
    ob_flush();
    flush();
  } else{
      $old_item = $modx->getObject('prCitiesItem' , array('url' => $out_item['url'] ));
      $old_item->set('price_1_5t', $out_item['price_1_5t']);
      $old_item->set('price_3t', $out_item['price_3t']);
      $old_item->set('price_5t', $out_item['price_5t']);
      $old_item->set('price_10t', $out_item['price_10t']);
      $old_item->set('price_dogruz', $out_item['price_dogruz']);
      $old_item->set('description', $out_item['description']);
      $old_item->set('way', $out_item['way']);

      $old_item->save();

      $old_price = $modx->getObject('prCitiesItemPrice', $old_item->get('id'));

      $old_price->set('pr_km', $out_price['pr_km']);
      $old_price->set('pr_1_5t', $out_price['pr_1_5t']);
      $old_price->set('pr_3t', $out_price['pr_3t']);
      $old_price->set('pr_5t', $out_price['pr_5t']);
      $old_price->set('pr_10t', $out_price['pr_10t']);
      $old_price->set('ob_km', $out_price['ob_km']);
      $old_price->set('ob_1_5t', $out_price['ob_1_5t']);
      $old_price->set('ob_3t', $out_price['ob_3t']);
      $old_price->set('ob_5t', $out_price['ob_5t']);
      $old_price->set('ob_10t', $out_price['ob_10t']);
      $old_price->set('sr_km', $out_price['sr_km']);
      $old_price->set('marzha_1_5t', $out_price['marzha_1_5t']);
      $old_price->set('marzha_3t', $out_price['marzha_3t']);
      $old_price->set('marzha_5t', $out_price['marzha_5t']);
      $old_price->set('marzha_10t', $out_price['marzha_10t']);
      $old_price->set('marzha_dogruz', $out_price['marzha_dogruz']);


      echo "Запись  " . $item['from']."-" . $item['to'] ." уже есть \n";
  }
  $out = array();
  $out_price = array();

}

print_r($out);

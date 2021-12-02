<?php
//ДОАВЛЕНИЕ НАПРАВЛЕНИЙ ИЗ РАЙОННЫХ ЦЕНТРОВ РЕГИОНА В МАЛЫЕ ГОРОДА ДРУГИХ РЕГИОНОВ

// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');

$from_city = "Воронеж"; //город из которого будем ехать

//получаем  города до которых из которых будем считать
$params = array('table' => 'https://docs.google.com/spreadsheets/d/1r9MGw4_E3-EeacCBh3nIUSEnl-qxJQo1R50Eov_YGH8/', 'range' => 'all_city_km', 'ignore' => 1);
$params_current = array('table' => 'https://docs.google.com/spreadsheets/d/1r9MGw4_E3-EeacCBh3nIUSEnl-qxJQo1R50Eov_YGH8/', 'range' => 'current_city', 'ignore' => 1);
$cities_from = $modx->runSnippet('GoogleSheets', $params);
$cities_to = $modx->runSnippet('GoogleSheets', $params_current);

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


foreach ($cities_to as $to_key => $to_city) { //берем каждую строчку гугл таблицы и выполняем

  foreach ($cities_from as $from_key => $from_city) {
    //проверяем нет ли существующей записи в базе
    if(!$pdo->getArray('prCitiesItem', array('from' => $from_city['pagetitle'], 'to' => $to_city['pagetitle']))){

      // если нет, то начинаем создавать новую

      //получаем необходимые данные по направлению из заданного города в областной центр
      $main = $pdo->getArray('prCitiesItem', array('from' => $from_city['pagetitle'], 'to' => $to_city['main'] ));
      $main_price = $pdo->getArray('prCitiesItemPrice', array('item_id' => $main['id'] ));


      //создаем массив для новой записи

      //названия и url
      $out_item['from'] = $from_city['pagetitle'];
      $out_item['to'] = $to_city['pagetitle'];
      $out_item['url'] = $generator->cleanAlias($from_city['pagetitle'] .'-'. $to_city['pagetitle']);

      //id городов
      $res_to = $pdo->getArray('modResource',  array('pagetitle:=' => $to_city['pagetitle'], ));
      $out_item['from_id'] = $main['from_id'];
      $out_item['to_id'] = $res_to['id'];

      //считаем километраж
      $out_price['pr_km'] = $main_price['pr_km'] + $to_city['km'] + $to_city['km'];
      $out_price['ob_km'] = $main_price['ob_km'];
      $out_price['sr_km'] = $main_price['sr_km'];

      //стоимости за километр
      $out_price['pr_1_5t'] = $main_price['pr_1_5t'];
      $out_price['pr_3t'] = $main_price['pr_3t'];
      $out_price['pr_5t'] = $main_price['pr_5t'];
      $out_price['pr_10t'] = $main_price['pr_10t'];

      $out_price['ob_1_5t'] = $main_price['ob_1_5t'];
      $out_price['ob_3t'] = $main_price['ob_3t'];
      $out_price['ob_5t'] = $main_price['ob_5t'];
      $out_price['ob_10t'] = $main_price['ob_10t'];

      //считаем стоимости догруза
      $pr_dogruz = $main_price['pr_1_5t']/4;
      $ob_dogruz = $main_price['ob_1_5t']/4;

      //стоимость перевозчика
      $trans_1_5t = ($out_price['pr_km'] * $main_price['pr_1_5t']) + ($out_price['ob_km'] * $main_price['ob_1_5t']) + ($out_price['sr_km'] * (($main_price['pr_1_5t'] + $main_price['ob_1_5t'])/2) );
      $trans_3t = ($out_price['pr_km'] * $main_price['pr_3t']) + ($out_price['ob_km'] * $main_price['ob_3t']) + ($out_price['sr_km'] * (($main_price['pr_3t'] + $main_price['ob_3t'])/2) );
      $trans_5t = ($out_price['pr_km'] * $main_price['pr_5t']) + ($out_price['ob_km'] * $main_price['ob_5t']) + ($out_price['sr_km'] * (($main_price['pr_5t'] + $main_price['ob_5t'])/2) );
      $trans_10t = ($out_price['pr_km'] * $main_price['pr_10t']) + ($out_price['ob_km'] * $main_price['ob_10t']) + ($out_price['sr_km'] * (($main_price['pr_5t'] + $main_price['ob_5t'])/2) );
      $trans_dogruz_tmp = ($out_price['pr_km'] * $pr_dogruz) + ($out_price['ob_km'] * $ob_dogruz) + ($out_price['sr_km'] * (($pr_dogruz + $ob_dogruz)/2) );
      if($trans_dogruz_tmp > 45000 ){
        $trans_dogruz = $trans_dogruz_tmp + ($trans_dogruz_tmp * 0.2);
      }elseif($trans_dogruz_tmp >= 25000){
        $trans_dogruz = $trans_dogruz_tmp + 5000;
      }elseif($trans_dogruz_tmp >= 15000){
        $trans_dogruz = $trans_dogruz_tmp + 4000;
      }else{
        $trans_dogruz = $trans_dogruz_tmp + 3000;
      }

      //получаем итоговую стоимось перевозки с маржой
      $out_item['price_1_5t'] = $trans_1_5t + marzha($trans_1_5t);
      $out_item['price_3t'] = $trans_3t + marzha($trans_3t);
      $out_item['price_5t'] = $trans_5t + marzha($trans_5t);
      $out_item['price_10t'] = $trans_10t + marzha($trans_10t);
      $out_item['price_dogruz'] = $trans_dogruz + marzha($trans_dogruz);

      $out_item['description'] = '';
      $out_item['way'] = 0;

      $out_price['marzha_1_5t'] = marzha($trans_1_5t);
      $out_price['marzha_3t'] = marzha($trans_3t);
      $out_price['marzha_5t'] = marzha($trans_5t);
      $out_price['marzha_10t'] = marzha($trans_10t);
      $out_price['marzha_dogruz'] = marzha($trans_dogruz);

      //создаем записи в двух таблицах базы и завязываем их между собой
      $doc = $modx->newObject('prCitiesItem', $out_item);
      $price = $modx->newObject('prCitiesItemPrice', $out_price);
      $price->addOne($doc);
      $price->save();

      //обнуляем временные массивы
      $out_price = array();
      $out_item = array();


      echo "Создал запись " . $from_city['pagetitle']." - " . $to_city['pagetitle'] ." \n";
      ob_flush();
      flush();

    } else {

      ++$vol_change;
      //если запись существует выводим сообщение
      echo "УЖЕ СУЩЕСТВУЕТ ЗАПИСЬ Пересчитываем " . $from_city['pagetitle'] . " - " . $to_city['pagetitle'] . "\n";
      ob_flush();
      flush();

      //Пересчитываем направление
      $value = $pdo->getArray('prCitiesItem', array('from' => $from_city['pagetitle'], 'to' => $to_city['pagetitle']));
      $item = $modx->getObject('prCitiesItem', $value['id']);
      $item_price = $modx->getObject('prCitiesItemPrice', array('item_id' => $value['id'] ));

      //получаем необходимые данные по направлению из заданного города в областной центр
      $main = $pdo->getArray('prCitiesItem', array('from' => $from_city['pagetitle'], 'to' => $to_city['main'] ));
      $main_price = $pdo->getArray('prCitiesItemPrice', array('item_id' => $main['id'] ));

      //считаем километраж
      $item_price->set('pr_km', $main_price['pr_km'] + $to_city['km'] + $to_city['km']);
      $item_price->set('ob_km', $main_price['ob_km']);
      $item_price->set('sr_km', $main_price['sr_km']);


      //стоимости за километр
      $item_price->set('pr_1_5t', $main_price['pr_1_5t']);
      $item_price->set('pr_3t', $main_price['pr_3t']);
      $item_price->set('pr_5t', $main_price['pr_5t']);
      $item_price->set('pr_10t', $main_price['pr_10t']);

      $item_price->set('ob_1_5t', $main_price['ob_1_5t']);
      $item_price->set('ob_3t', $main_price['ob_3t']);
      $item_price->set('ob_5t', $main_price['ob_5t']);
      $item_price->set('ob_10t', $main_price['ob_10t']);

      //считаем стоимости догруза
      $pr_dogruz = $main_price['pr_1_5t']/4;
      $ob_dogruz = $main_price['ob_1_5t']/4;

      //стоимость перевозчика
      $out_price['pr_km'] = $main_price['pr_km'] + $to_city['km'] + $to_city['km'];
      $out_price['ob_km'] = $main_price['ob_km'];
      $out_price['sr_km'] = $main_price['sr_km'];
      $trans_1_5t = ($out_price['pr_km'] * $main_price['pr_1_5t']) + ($out_price['ob_km'] * $main_price['ob_1_5t']) + ($out_price['sr_km'] * (($main_price['pr_1_5t'] + $main_price['ob_1_5t'])/2) );
      $trans_3t = ($out_price['pr_km'] * $main_price['pr_3t']) + ($out_price['ob_km'] * $main_price['ob_3t']) + ($out_price['sr_km'] * (($main_price['pr_3t'] + $main_price['ob_3t'])/2) );
      $trans_5t = ($out_price['pr_km'] * $main_price['pr_5t']) + ($out_price['ob_km'] * $main_price['ob_5t']) + ($out_price['sr_km'] * (($main_price['pr_5t'] + $main_price['ob_5t'])/2) );
      $trans_10t = ($out_price['pr_km'] * $main_price['pr_10t']) + ($out_price['ob_km'] * $main_price['ob_10t']) + ($out_price['sr_km'] * (($main_price['pr_5t'] + $main_price['ob_5t'])/2) );
      $trans_dogruz_tmp = ($out_price['pr_km'] * $pr_dogruz) + ($out_price['ob_km'] * $ob_dogruz) + ($out_price['sr_km'] * (($pr_dogruz + $ob_dogruz)/2) );
      if($trans_dogruz_tmp > 45000 ){
        $trans_dogruz = $trans_dogruz_tmp + ($trans_dogruz_tmp * 0.2);
      }elseif($trans_dogruz_tmp >= 25000){
        $trans_dogruz = $trans_dogruz_tmp + 5000;
      }elseif($trans_dogruz_tmp >= 15000){
        $trans_dogruz = $trans_dogruz_tmp + 4000;
      }else{
        $trans_dogruz = $trans_dogruz_tmp + 3000;
      }

      //получаем итоговую стоимось перевозки с маржой
      $item->set('price_1_5t', $trans_1_5t + marzha($trans_1_5t));
      $item->set('price_3t', $trans_3t + marzha($trans_3t));
      $item->set('price_5t', $trans_5t + marzha($trans_5t));
      $item->set('price_10t', $trans_10t + marzha($trans_10t));
      $item->set('price_dogruz', $trans_dogruz + marzha($trans_dogruz));

      $item_price->set('marzha_1_5t', marzha($trans_1_5t));
      $item_price->set('marzha_3t', marzha($trans_3t));
      $item_price->set('marzha_5t', marzha($trans_5t));
      $item_price->set('marzha_10t', marzha($trans_10t));
      $item_price->set('marzha_dogruz', marzha($trans_dogruz));

      $item->save();
      $item_price->save();
      //обнуляем временные массивы
      $out_price = array();
      $out_item = array();
    }


  }
}

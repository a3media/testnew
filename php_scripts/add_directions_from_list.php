<?php
//ДОАВЛЕНИЕ НАПРАВЛЕНИЙ ДО РАЙОННЫХ ЦЕНТРОВ ИЗ КРУПНОГО ГОРОДА

// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev.prtrans.ru/index.php';

$errors = array(); //массив ошибок
$vol_add = 0; //добавленно записей
$vol_change = 0; //уже было записей
$vol_ignore = 0; //проигнорировано строк

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');

$from_city_list = array('Новосибирск', 'Казань', 'Челябинск', 'Пермь', 'Нижний Новгород', 'Самара', 'Кемерово', 'Воронеж'); //города из которых будем ехать

//получаем  города до которых будем считать
$params = array('table' => 'https://docs.google.com/spreadsheets/d/1r9MGw4_E3-EeacCBh3nIUSEnl-qxJQo1R50Eov_YGH8/', 'range' => 'all_city_km', 'ignore' => 1);

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


foreach ($from_city_list as $from_city) { //берем каждый город
  foreach ($cities as $key => $city) {   //берем каждую строчку гугл таблицы и выполняем

    //проверяем нет ли существующей записи в базе и совпадение с основным городом
    if(!$pdo->getArray('prCitiesItem', array('from' => $from_city, 'to' => $city['pagetitle']))){
      if ($from_city !== $city['main']) {
        ++$vol_add;
        // если нет, то начинаем создавать новую
        //получаем необходимые данные по направлению из заданного города в областной центр

        $main = $pdo->getArray('prCitiesItem', array('from' => $from_city, 'to' => $city['main'] ));
        $main_price = $pdo->getArray('prCitiesItemPrice', array('item_id' => $main['id'] ));

        //создаем массив для новой записи

        //названия и url
        $out_item['from'] = $from_city;
        $out_item['to'] = $city['pagetitle'];
        $out_item['url'] = $generator->cleanAlias($from_city .'-'. $city['pagetitle']);

        //id городов
        $out_item['from_id'] = $main['from_id'];
        $res_to = $pdo->getArray('modResource',  array('pagetitle:=' => $city['pagetitle'], ));
        $out_item['to_id'] = $res_to['id'];

        //считаем километраж
        $out_price['pr_km'] = $main_price['pr_km'] + $city['km'] + $city['km'];
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

        echo "Создал запись " . $from_city." - " . $city['pagetitle'] ." \n";
        ob_flush();
        flush();

        //обнуляем временные массивы
        $out_price = array();
        $out_item = array();
      } else {
        ++$vol_ignore;
        //если город и центр региона это один пункт
        echo "До городов в том же регионе не считаем " . $from_city . " - " . $city['pagetitle'] . "\n";
        ob_flush();
        flush();
      }
    } else {
      ++$vol_change;
      //если запись существует выводим сообщение
      echo "Уже существует запись " . $from_city . " - " . $city['pagetitle'] . "\n";
      ob_flush();
      flush();
    }
  }
}
echo "Уже есть записи - " . $vol_change . "\n";
ob_flush();
flush();
echo "Добавлены записи - " . $vol_add . "\n";
ob_flush();
flush();
echo "Игнорированные записи - " . $vol_ignore . "\n";
ob_flush();
flush();

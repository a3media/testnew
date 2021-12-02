<?php
// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');

$params = array('table' => 'https://docs.google.com/spreadsheets/d/1r9MGw4_E3-EeacCBh3nIUSEnl-qxJQo1R50Eov_YGH8/', 'range' => 'Для москвы', 'ignore' => 1);

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

//Получаем мини-города из таблицы Для Краснодара
$cities = $modx->runSnippet('GoogleSheets', $params);

//Получаем мини-города из таблицы Для Краснодара
$count;

$generator = $modx->newObject('modResource');

$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/');

$cities_from = array(

  'Белоозёрский',
  'Бронницы',
  'Видное',
  'Высоковск',
  'Голицыно',
  'Дзержинский',
  'Дмитров',
  'Домодедово',
  'Дрезна',
  'Жуковский',
  'Зарайск',
  'Звенигород',
  'Истра',
  'Климовск',
  'Коломна',
  'Королев',
  'Красноармейск Московская область',
  'Красногорск',
  'Краснозаводск',
  'Кубинка',
  'Куровское',
  'Ликино-Дулёво',
  'Лобня',
  'Лосино-Петровский',
  'Лыткарино',
  'Люберцы',
  'Мытищи',
  'Наро-Фоминск',
  'Ногинск',
  'Одинцово',
  'Озёры',
  'Орехово-Зуево',
  'Пересвет',
  'Протвино',
  'Пушкино',
  'Пущино',
  'Раменское',
  'Реутов',
  'Рошаль',
  'Руза',
  'Сергиев Посад',
  'Старая Купавна',
  'Ступино',
  'Химки',
  'Хотьково',
  'Черноголовка',
  'Чехов',
  'Щелково',
  'Электрогорск',
  'Электросталь',
  'Электроугли'
);
foreach ($cities_from as $key => $city_from) {
  foreach ($cities as $key => $city) {

    $item = $pdo->getArray('prCitiesItem', array('from' => $city_from, 'to' => $city['main'] ));

    if ($item) {

      if(!$pdo->getArray('prCitiesItem', array('from' => $item['from'], 'to' => $city['pagetitle']))){

        $main_price = $pdo->getArray('prCitiesItemPrice',  array('item_id' => $item['id']));



        $out_item['from'] = $item['from'];
        //узнаем ресурс родитель и записываем его айди в базу
        $res_from = $pdo->getArray('modResource',  array('pagetitle:=' => $item['from'], ));
        $out_item['from_id'] = $res_from['id'];

        $out_item['to'] = $city['pagetitle'];
        $out_item['url'] = $generator->cleanAlias( $item['from'] .'-'. $city['pagetitle']);
        //узнаем ресурс родитель и записываем его айди в базу
        $res_to = $pdo->getArray('modResource',  array('pagetitle:=' => $item['to'], ));

        $out_item['to_id'] = $res_to['id'];

        $out_price['pr_km'] = $main_price['pr_km'] + $city['km'];

        $out_price['ob_km'] = $main_price['ob_km'] + $city['km'];

        $out_price['sr_km'] = $main_price['sr_km'];

        $out_price['pr_1_5t'] = $main_price['pr_1_5t'];
        $out_price['pr_3t'] = $main_price['pr_3t'];
        $out_price['pr_5t'] = $main_price['pr_5t'];
        $out_price['pr_10t'] = $main_price['pr_10t'];

        $out_price['ob_1_5t'] = $main_price['ob_1_5t'];
        $out_price['ob_3t'] = $main_price['ob_3t'];
        $out_price['ob_5t'] = $main_price['ob_5t'];
        $out_price['ob_10t'] = $main_price['ob_10t'];

        $pr_dogruz = $main_price['pr_1_5t']/4;
        $ob_dogruz = $main_price['ob_1_5t']/4;

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


        $out_item['price_1_5t'] = $trans_1_5t + marzha($trans_1_5t);
        $out_item['price_3t'] = $trans_3t + marzha($trans_3t);
        $out_item['price_5t'] = $trans_5t + marzha($trans_5t);
        $out_item['price_10t'] = $trans_10t + marzha($trans_10t);
        $out_item['price_dogruz'] = $trans_dogruz + marzha($trans_dogruz);

        $out_item['description'] = '';
        $out_item['way'] = 0;

        $out_item['update'] = time();

        $out_price['marzha_1_5t'] = marzha($trans_1_5t);
        $out_price['marzha_3t'] = marzha($trans_3t);
        $out_price['marzha_5t'] = marzha($trans_5t);
        $out_price['marzha_10t'] = marzha($trans_10t);
        $out_price['marzha_dogruz'] = marzha($trans_dogruz);

        $doc = $modx->newObject('prCitiesItem', $out_item);

        $price = $modx->newObject('prCitiesItemPrice', $out_price);

        $price->addOne($doc);

        $price->save();

        echo "Создал запись " . $out_item['from']."-" . $out_item['to'] ." \n";
        $count['yes']++;

        ob_flush();
        flush();

        $out_price = array();
        $out_item = array();
      } else {
        echo "Запись " . $item['from'] . "-" . $city['pagetitle'] . " существует \n";
        $count['no']++;

        ob_flush();
        flush();
      }


    }

  }
}



echo "Создано ".$count['yes']." записей.\nУже существует" . $count['no'] . " записей.\n";

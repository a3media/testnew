<?php
//Переписываем стоимости
// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev1.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');

$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/');

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


$new_price = array(
  'pr_1_5t' => 22,
  'pr_3t' => 29,
  'pr_5t' => 34,
  'pr_10t' => 50,
  'pr_dogruz' => 5.5,
  'ob_1_5t' => 14,
  'ob_3t' => 19,
  'ob_5t' => 22,
  'ob_10t' => 35,
  'ob_dogruz' => 3.5,
 );

$id = 116518;

$item = $modx->getObject('prCitiesItem', $id);
$item_price = $modx->getObject('prCitiesItemPrice', array('item_id' => $id ));
echo $item_price->get('id');
echo "\n";
ob_flush();
flush();
$item_price->set('pr_1_5t',$new_price['pr_1_5t']);
$item_price->set('pr_3t',$new_price['pr_3t']);
$item_price->set('pr_5t',$new_price['pr_5t']);
$item_price->set('pr_10t',$new_price['pr_10t']);
$item_price->set('ob_1_5t',$new_price['ob_1_5t']);
$item_price->set('ob_3t',$new_price['ob_3t']);
$item_price->set('ob_5t',$new_price['ob_5t']);
$item_price->set('ob_10t',$new_price['ob_10t']);

$pr_km = $item_price->get('pr_km');
$ob_km = $item_price->get('ob_km');
$sr_km = $item_price->get('sr_km');


$trans_1_5t = ($pr_km * $new_price['pr_1_5t']) + ($ob_km * $new_price['ob_1_5t']) + ($sr_km * (($new_price['pr_1_5t'] + $new_price['ob_1_5t'])/2) );
$trans_3t = ($pr_km * $new_price['pr_3t']) + ($ob_km * $new_price['ob_3t']) + ($sr_km * (($new_price['pr_3t'] + $new_price['ob_3t'])/2) );
$trans_5t = ($pr_km * $new_price['pr_5t']) + ($ob_km * $new_price['ob_5t']) + ($sr_km * (($new_price['pr_5t'] + $new_price['ob_5t'])/2) );
$trans_10t = ($pr_km * $new_price['pr_10t']) + ($ob_km * $new_price['ob_10t']) + ($sr_km * (($new_price['pr_10t'] + $new_price['ob_10t'])/2) );
$trans_dogruz_tmp = ($pr_km * $new_price['pr_dogruz']) + ($ob_km * $new_price['ob_dogruz']) + ($sr_km * (($new_price['pr_dogruz'] + $new_price['ob_dogruz'])/2) );

if($trans_1_5t > 45000 ){
  $trans_dogruz = $trans_dogruz_tmp + ($trans_dogruz_tmp * 0.2);
}elseif($trans_1_5t >= 25000){
  $trans_dogruz = $trans_dogruz_tmp + 5000;
}elseif($trans_1_5t >= 15000){
  $trans_dogruz = $trans_dogruz_tmp + 4000;
}else{
  $trans_dogruz = $trans_dogruz_tmp + 3000;
}

$item_price->set('marzha_1_5t',marzha($trans_1_5t));
$item_price->set('marzha_3t',marzha($trans_3t));
$item_price->set('marzha_5t',marzha($trans_5t));
$item_price->set('marzha_10t',marzha($trans_10t));
$item_price->set('marzha_dogruz',marzha($trans_dogruz));
$item_price->save();

$item->set('price_1_5t',$trans_1_5t + marzha($trans_1_5t));
$item->set('price_3t',$trans_3t + marzha($trans_3t));
$item->set('price_5t',$trans_5t + marzha($trans_5t));
$item->set('price_10t',$trans_10t + marzha($trans_10t));
$item->set('price_dogruz',$trans_dogruz + marzha($trans_dogruz));
$item->save();


$item = $pdo->getArray('prCitiesItem',  array('id' => $id));
$item_price = $pdo->getArray('prCitiesItemPrice',  array('item_id' => $id));
print_r($item);
print_r($item_price);
//$item->set('to_id',$id);

/*
foreach ($items as $key => $value) {
  $res_to = $pdo->getArray('modResource', array('pagetitle' => $value['to'] ));
  $res_from = $pdo->getArray('modResource', array('pagetitle' => $value['from'] ));
  echo 'Из '.$value['from'].' - текущий id - '.$value['from_id'].' - реальный - '.$res_from['id'].' ввв '.$value['to'].' - текущий id - '.$value['to_id'].' - реальный - '.$res_to['id'];

  echo "\n";
  ob_flush();
  flush();

  $item = $modx->getObject('prCitiesItem', $value['id']);
  $item->set('to_id',$id);
  $item->set('to',$city_name);
  $item->save();

}
*/

<?php
//проверка расхождений в названиях городов и их id в prCitiesItem, возвращает список городов по которым найдены ошибки

// Подключаем MODX
define('MODX_API_MODE', true);
require  '/var/www/prtrans/data/www/dev1.prtrans.ru/index.php';

// Включаем обработку ошибок MODXurl
$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_INFO);
$modx->switchContext('web');
$pdo = $modx->getService('pdoFetch');

$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/');

//$city = "Симферополь";
//$id = 1011;
//$to_id = 12920;
//$items = $pdo->getCollection('prCitiesItem', array('from' => $city ));
$cities = $pdo->getCollection('modResource', array('parent' => 934 ));
$rewrite;

foreach ($cities as $key => $city) {
  //$res_to = $pdo->getArray('modResource', array('pagetitle' => $value['to'] ));
  //$res_from = $pdo->getArray('modResource', array('pagetitle' => $value['from'] ));
  //echo 'Из '.$value['from'].' - текущий id - '.$value['from_id'].' - реальный - '.$res_from['id'].' ввв '.$value['to'].' - текущий id - '.$value['to_id'].' - реальный - '.$res_to['id'];
  $directions = $pdo->getCollection('prCitiesItem', array('from' => $city['pagetitle']));
  $i = 0;
    foreach ($directions as $key => $value) {
      $res_to = $pdo->getArray('modResource', array('pagetitle' => $value['to'] ));
      $res_from = $pdo->getArray('modResource', array('pagetitle' => $value['from'] ));
      if ($res_to) {
        if ($res_to['id'] !== $value['to_id']) {
          ++$i;
        }
      } else {
        echo 'Ресурс не найден - '.$value['to'];
        echo "\n";
        ob_flush();
        flush();
      }

      if ($res_from) {
        if ($res_from['id'] !== $value['from_id']) {
          ++$i;
        }
      } else {
        echo 'Ресурс не найден - '.$value['from'];
        echo "\n";
        ob_flush();
        flush();
      }

    }
  echo $city['pagetitle'].' - '.$city['id'].' - направлений - '.count($directions).' - разночтений - '.$i;
  if ($i > 0) {
    $rewrite[$city['id']]['city'] = $city['pagetitle'];
    $rewrite[$city['id']]['errors'] = $i;
  }
  echo "\n";
  ob_flush();
  flush();
}
print_r($rewrite);
echo json_encode($rewrite);
echo "\n";

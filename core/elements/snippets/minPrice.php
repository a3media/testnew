<?php
$pdo = $modx->getService('pdoFetch');
$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/', $scriptProperties);
if (!$prCities) {
    return 'Could not load prCities class!';
}
$prices;
$items = $pdo->getCollection('prCitiesItem', array('from' => $input,), array('select' => 'price_dogruz','limit' => $limit,));
$output;

foreach ($items as $item) {
  $prices[] = $item['price_dogruz'];
}
echo min($prices);
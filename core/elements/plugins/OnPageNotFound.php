<?php
if ($modx->event->name != 'OnPageNotFound') {return false;}
$pdo = $modx->getService('pdoFetch');
$prCities = $modx->getService('prCities', 'prCities', MODX_CORE_PATH . 'components/prcities/model/', $scriptProperties);
if (!$prCities) {
    return 'Could not load prCities class!';
}
$alias = $modx->context->getOption('request_param_alias', 'q');
if (!isset($_REQUEST[$alias])) {return false;}

$request = $_REQUEST[$alias];
$tmp = explode('/', $request);
// Ссылка подходит под заданный формат: brands/brandname
if ($tmp[0] == 'russia' && count($tmp) >= 2)
{
  $tmp_bukva = explode('-', $request);
  if ($tmp_bukva[0] == 'russia/ways') {
    $section = 590;
    $modx->sendForward($section);
  } else
  {
    // Определяем id раздела /russia/.
    // Конечно, можно его и руками прописать - но так гибче
    $section = 12255;
    // Теперь очищаем имя бренда от возможного расширения
    $url = str_replace('.html', '', $tmp[1]);
    // Если очищенное имя не равно запрошенному - то можно отредиректить юзера
    // Также возможен вариант с косой на конце имени бренда - его тоже учитываем
    // SEOшники должны оценить =)


    // Люди с неправильной ссылкой ушли на правильную и дошли до этого момента со второго раза
    // Дальше проверяем наличие запрошенного бренда

    if ($way = $pdo->getObject('prCitiesItem', array('url' => $url))) {
      // Круто, такой бренд есть, получаем его id
      $modx->setPlaceholders($way);

      // Осталось выставить нужные переменные в запрос, как будто юзер их сам указал
      // Так как это mFilter2 - выставляем выбранный бренд
      // А теперь подсовывем юзеру страницу брендов, а дальше сниппет на ней сам разберётся
      $modx->sendForward($section);
    }
  }
}
// Иначе ничего не делаем и юзер получает 404 или его перехватывает другой плагин.

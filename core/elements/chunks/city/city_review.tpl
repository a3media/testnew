{if $_modx->resource.city_review !== ""}
<div class="container">
  <h2>Отзывы</h2>
  <div class="row">
  {'!pdoPage' | snippet : [
      'element' => 'ecMessages',
      'thread' => 'resource-7',
      'messages' => $_modx->resource.city_review,
      'limit' => '10',
      'context' => 'web',
      'tpl' => '@FILE chunks/easycomm/tpl.ecMessages.city.Row.tpl'
  ]}
  {$_modx->getPlaceholder('page.nav')}
  </div>
</div>
{/if}

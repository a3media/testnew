<div id="city_price" class="city_price">
  <div class="container">
      {if $_modx->resource.template == 40}
        <h2 class="text-center">Стоимость грузоперевозки из города {$_modx->resource.pagetitle} в Россию</h2>
      {else}
        <h2 class="text-center">Стоимость грузоперевозки из города {$_modx->resource.pagetitle} по России</h2>
      {/if}
    <div class="row justify-content-center">
      <div class="col-md-10">

      {$_modx->runSnippet('price2_main', [
          'km1' => $_modx->resource.km1,
          'km2' => $_modx->resource.km2,
          'city1' => $_modx->resource.pagetitle,
          'city2' => $_modx->config.city,
          'tpl' => '@FILE chunks/city_priceTpl.tpl'
        ])}
      </div>
    </div>
  </div>
</div>

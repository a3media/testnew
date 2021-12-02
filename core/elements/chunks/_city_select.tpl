<div class="city_select text-center">
    <svg><use xlink:href="img/sprite.svg#header_map"></use></svg>
  <div class="d-inline-block text-left pl-2">
    <span> {$_modx->config.pr_region}</span>
    {if $_modx->context.key == 'web'}
    <a href="#" class="small modal_ajax_btn" data-action="cities_list">Уточнить регион</a>
    {else}
    <a href="#" class="small modal_ajax_btn" data-action="cities_list">Сменить регион</a>
    {/if}
  </div>
</div>

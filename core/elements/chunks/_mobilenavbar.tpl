<div class="mobile_navbar d-lg-none navbar fixed-top shadow">
  <div class="st-trigger-effects">
  	<button data-effect="st-effect-3" class="btn btn-link">
      <svg class="bar_icon"><use xlink:href="/img/sprite.svg#bar_white"></use></svg>
    </button>
  </div>
  <div class="city_select_mob text-center d-md-none">
      <img src="/img/header_map_mob.svg" style="vertical-align:baseline;" alt="Метка карты">
    <div class="d-inline-block text-left pl-2">
      <span > {$_modx->config.pr_region}</span>
      {if $_modx->context.key == 'web'}
      <a href="#" class="small modal_ajax_btn" data-action="cities_list">Уточнить регион</a>
      {else}
      <a href="#" class="small modal_ajax_btn" data-action="cities_list">Сменить регион</a>
      {/if}
    </div>
  </div>
</div>

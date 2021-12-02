<div class="card">
  <div class="card-header bg-primary" id="heading{$way}_{$id}">
    <h4 class="mb-0">
      <a href="#" class="text-white" data-toggle="collapse" data-target="#collapse{$way}_{$id}" aria-expanded="true" aria-controls="collapseOne">
        {if $way == 'way1'}
         {$city} - {$_modx->resource.pagetitle}
        {/if}
        {if $way == 'way2'}
          {$_modx->resource.pagetitle} - {$city}
        {/if}

      </a>
    </h4>
  </div>

  <div id="collapse{$way}_{$id}" class="collapse {if $idx == 0}show{/if}" aria-labelledby="heading{$way}_{$id}" data-parent="#accordion{$way}">
    <div class="card-body">
      <div class="row mx-1 text-center p_table">
        <div class="col-md-3 col-6 p_item">
          <h5>
            <a href="#">
              <img src="/img/truck.svg" alt="Иконка авто">
              1,5 тонн
            </a>
          </h5>
        </div>
        <div class="col-md-3 col-6 p_item">
          <span class="h5">{if $p15t > 0} {$p15t| number : 0 : '.' : ' '} р. {else} Уточните у менеджера {/if}</span>
        </div>
        <div class="col-md-3 col-6 p_item">
          <h5>
            <a href="#">
              <img src="/img/truck.svg" alt="Иконка авто">
              10 тонн
            </a>
          </h5>
        </div>
        <div class="col-md-3 col-6 p_item">
          <span class="h5">{if $p10t > 0} {$p10t| number : 0 : '.' : ' '} р. {else} Уточните у менеджера {/if}</span>
        </div>
        <div class="col-md-3 col-6 p_item">
          <h5>
            <a href="#">
              <img src="/img/truck.svg" alt="Иконка авто">
              5 тонн
            </a>
          </h5>
        </div>
        <div class="col-md-3 col-6 p_item">
          <span class="h5">{if $p5t > 0} {$p5t| number : 0 : '.' : ' '} р. {else} Уточните у менеджера {/if}</span>
        </div>
        <div class="col-md-3 col-6 p_item">
          <h5>
            <a href="#">
              <img src="/img/truck.svg" alt="Иконка авто">
              20 тонн
            </a>
          </h5>
        </div>
        <div class="col-md-3 col-6 p_item">
          <span class="h5">{if $p20t > 0} {$p20t| number : 0 : '.' : ' '} р. {else} Уточните у менеджера {/if}</span>
        </div>
      </div>
    </div>
  </div>
</div>

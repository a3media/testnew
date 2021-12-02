<div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header bg-primary" id="headingOne">
      <h4 class="mb-0">
        <a href="#" class="text-white" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          {$_modx->config.city} - {$_modx->resource.pagetitle}
        </a>
      </h4>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
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
            <span class="h5">{if $p15t_1 > 0} {$p15t_1| number : 0 : '.' : ' '} р. {else} Уточните у менеджера {/if}</span>
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
              <span class="h5">{if $p10t_1 > 0} {$p10t_1| number : 0 : '.' : ' '} р. {else} Уточните у менеджера {/if}</span>
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
            <span class="h5">{if $p5t_1 > 0} {$p5t_1| number : 0 : '.' : ' '} р. {else}  Уточните у менеджера {/if}</span>
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
              <span class="h5">{if $p20t_1 > 0} {$p20t_1| number : 0 : '.' : ' '} р. {else} Уточните у менеджера {/if}</span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header bg-primary" id="headingTwo">
      <h4 class="mb-0">
        <a href="#" class="text-white" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          {$_modx->resource.pagetitle} - {$_modx->config.city}
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
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
            <span class="h5">{if $p15t_2 > 0} {$p15t_2| number : 0 : '.' : ' '} р. {else} Уточните у менеджера {/if}</span>
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
            <span class="h5">{if $p10t_2 > 0} {$p10t_2| number : 0 : '.' : ' '} р. {else} Уточните у менеджера {/if}</span>
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
            <span class="h5">{if $p5t_2 > 0} {$p5t_2| number : 0 : '.' : ' '} р. {else} Уточните у менеджера {/if}</span>
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
            <span class="h5">{if $p20t_2 > 0} {$p20t_2| number : 0 : '.' : ' '} р. {else} Уточните у менеджера {/if}</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

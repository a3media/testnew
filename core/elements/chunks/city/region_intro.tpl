<div class="intro_wrapper mb-4">
    <div class="container p-relative">
      <div class="intro_back"></div>
        <div class="row justify-content-between align-items-center">
            <div class="col-md-6 py-3 my-2 order-2 order-md-1">
              <h1 class="h2">{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
              <div class="city_intro_content pb-3">
                {$_modx->resource.content}
              </div>
              {var $prices = 'price' | resource | split : ';'}
              <div class="row pb-4 align-items-center">
                {var $min_price = 'tv.cities_in_region' | resource | minPriceRegion | number : 0 : '.' : ' '}
                {if $min_price !== "0"}
                  <div class="col-5">
                    <div class="c_to_c_minprice ">
                      <p class="m-0">От <span>{$min_price}</span> руб.</p>
                    </div>
                  </div>
                {/if}
                <div class="col-4 c_to_c_info_item">
                    <img src="/img/kg.svg" alt="Минимальный вес"> <span style="font-size: 24px;">от 100 кг</span>
                </div>

              </div>
            </div>
            <div class="col-md-6 col-lg-5 order-1 order-md-2">
              {$_modx->runSnippet('!AjaxForm', [
                'form' => '@FILE  chunks/feedback/feedback_c_to_c.tpl',
                'snippet' => 'FormIt',
                'hooks' => 'FormItSaveForm,megaplan_v2_test',
                'validate' => 'phone:phone:required',
                'validationErrorMessage' => 'В форме содержатся ошибки!',
                'frontend_css'=>''
              ])}
            </div>
        </div>
    </div>
</div>

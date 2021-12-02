<div class="feedback_intro text-center mb-4">
  <h2 class="feedback_title mb-0">Заполните заявку</h2>
  <p>и узнайте стоимость в 15 течение минут</p>
</div>
<form action="" method="post" class="ajax_form af_example" id="mtop_form">
  <input type="hidden" name="site" value="{'site_url' | config}">
  <input type="hidden" name="utm" value="{'!utm_v2' | snippet}">
  <input name="form" type="hidden" value="top_form">
  <div class="row justify-content-center">
      <div class="col-10 col-md-5 px-1">
        <div class="form-group">
          <input id="af_down" class="form-control adress_city" name="down" type="text" value="{if $_modx->resource.template != 50}{if ($_modx->context.key == 'web')}{if $_modx->resource.template != 1 }{$_modx->resource.pagetitle}{/if}{else}{$_modx->config.pr_region}{/if}{/if}">
          <label for="af_down">Откуда</label>
          <small class="error">{$_modx->getPlaceholder('fi.error.down')}</small>
        </div>
      </div>
      <div class="col-md-1 px-0 text-center d-none d-md-block">
        <span class="input_to_input">
          <svg><use xlink:href="/img/sprite.svg#form_arrow"></use></svg>
        </span>
      </div>
      <div class="col-10 col-md-5 px-1">
        <div class="form-group">
          <input id="af_town" class="form-control adress_city" name="town" type="text" value="{if ($_modx->context.key != 'web')}{if $_modx->resource.template != 1}{$_modx->resource.pagetitle}{/if}{/if}">
          <label for="af_town">Куда</label>
          <small class="error">{$_modx->getPlaceholder('fi.error.town')}</small>
        </div>
      </div>

      <div class="col-10 col-md-5 px-1">
        <div class="form-group">
          <input id="af_weight" class="form-control" name="weight" type="text">
          <span class="error">{$_modx->getPlaceholder('fi.error.weight')}</span>
          <label for="af_weight">Вес (Кг)</label>
        </div>
      </div>
      <div class="col-md-1 px-0 text-center">
      </div>
      <div class="col-md-5 col-10 px-1">
        <div class="form-group">
          <input id="af_phone_top" class="form-control phone_input" name="phone" type="text">
           <span class="error_phone">{$_modx->getPlaceholder('fi.error.phone')}</span>
          <label for="af_phone_top">Телефон</label>
        </div>
      </div>
      <div class="col-10 px-1">
      <div class="custom-control custom-checkbox w-100 mb-3">
      <input type="hidden" name="agreecont" value="">
      <input type="checkbox" class="custom-control-input agree-cont" name="agreecont" id="agree-cont" value="agree" checked>

      <label class="custom-control-label politic_label" for="agree-cont">
        даю согласие на обработку персональных данных и соглашаюсь c <a href="{551 | url}" target="_blank">политикой конфиденциальности</a>
      <span class="error_agreecont">[[+fi.error.agreecont]]</span>
    </div>
      </label>
      </div>
      </div>

      <p class="h5 text-center">ВНИМАНИЕ: мы перевозим грузы от 100 кг</p>
      <div class="col-12">
          <div class="controls text-center">
              <button type="submit" class="btn btn-primary">Отправить</button>
          </div>
      </div>
    </div>
</form>

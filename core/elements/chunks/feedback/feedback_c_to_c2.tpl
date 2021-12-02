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
          <input id="af_down" class="form-control adress_city" name="down" type="text" value="{if 'from' | placeholder}{'from' | placeholder}{else}{'menutitle' | resource}{/if}">
          <label for="af_down">Откуда</label>
          <small class="error">{$_modx->getPlaceholder('fi.error.down')}</small>
        </div>
      </div>
      <div class="col-md-1 px-0 text-center d-none d-md-block">
        <span class="input_to_input">
          <img src="/img/arrow2.svg" alt="Поменять местами">
        </span>
      </div>
      <div class="col-10 col-md-5 px-1">
        <div class="form-group">
          <input id="af_town" class="form-control adress_city" name="town" type="text" value="{'to' | placeholder}">
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
      <div class="form-check mb-2 col-10">
        <input type="hidden" name="agree" value="">
        <input class="form-check-input" type="checkbox" id="agree_top" name="agree_top" checked>
        <label class="form-check-label d-inline-block small" for="agree_top">
          даю согласие на обработку персональных данных и соглашаюсь c <a href="{551 | url}" target="_blank">политикой конфиденциальности</a>
          <span class="error error_agree_top">{'fi.error.agree_top' | placeholder}</span>
        </label>
      </div>
      <div class="col-12">
          <div class="controls text-center">
              <button type="submit" class="btn btn-primary">Отправить</button>
          </div>
      </div>
    </div>
</form>

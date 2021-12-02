<form action="" method="post" class="ajax_form af_example" id="no_city">
  <div class="modal-body py-4">
    <div class="row">
        <div class="d-none">
          <input class="whatever" name="whatever" type="text">
          <input name="form" type="text" value="no_city">
          <input type="hidden" name="utm" value="">
          <input type="hidden" name="site" value="">
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <input id="af_down_down" class="form-control" name="down" type="text">
            <label for="af_down_down">Откуда</label>
            <small class="error">{$_modx->getPlaceholder('fi.error.down')}</small>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <input id="af_town_down" class="form-control" name="town" type="text">
            <label for="af_town_down">Куда</label>
            <small class="error">{$_modx->getPlaceholder('fi.error.town')}</small>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <input id="af_weight_down" class="form-control" name="weight" type="text">
            <span class="error">{$_modx->getPlaceholder('fi.error.weight')}</span>
            <label for="af_weight_down"> Вес (Кг)</label>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <input id="af_phone_down" class="form-control phone_input" name="phone" type="text">
             <span class="error_phone">{$_modx->getPlaceholder('fi.error.phone')}</span>
            <label for="af_phone_down">Телефон</label>
          </div>
        </div>
    </div>
    <div class="form-check mb-2">
      <input type="hidden" name="agree" value="">
      <input class="form-check-input" type="checkbox" id="agree" name="agree" checked>
      <label class="form-check-label d-inline-block small" for="agree">
        даю согласие на обработку персональных данных и соглашаюсь c <a href="{551 | url}" target="_blank">политикой конфиденциальности</a>
        <span class="error error_agree">{'fi.error.agree' | placeholder}</span>
      </label>
    </div>
    <div class="text-center w-100">
      <button type="submit" class="btn btn-primary">Заказать</button>
    </div>
  </div>
</form>

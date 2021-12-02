<div class="feedback">
  <div class="feedback_intro text-center mb-4">
    <p class="feedback_title mb-0">Заполните заявку</p>
    <p>и узнайте стоимость в 15 течение минут</p>
  </div>
    <form action="" method="post" class="ajax_form af_example" id="mtop_form">
      {'!utm_medium' | snippet}
      <input class="form-control whatever" name="whatever" type="hidden" value="Верхняя форма">
      <div class="row justify-content-center">
          <div class="col-10 col-md-5 px-1">
              <div class="form-group">
              <input id="af_down" class="form-control" name="down" type="text" value="">
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
              <input id="af_town" class="form-control" name="town" type="text" value="">
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
              <input id="af_phone_top" class="form-control" name="phone phone_input" type="text">
               <span class="error_phone">{$_modx->getPlaceholder('fi.error.phone')}</span>
              <label for="af_phone_top">Телефон</label>
            </div>
          </div>
          <h5>ВНИМАНИЕ: мы перевозим грузы от 300 кг</h5>
          <div class="form-group col-12">
              <div class="controls text-center">
                  <button type="submit" class="btn btn-primary">Отправить</button>
              </div>
          </div>
        </div>
    </form>
</div>

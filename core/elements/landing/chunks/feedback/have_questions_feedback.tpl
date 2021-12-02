<div class="feedback">
    <h3 class="text-center have_questions_title">Заполните форму</h3>
    <form action="" method="post" class="ajax_form" id="bottom_form">
      {'!utm_medium' | snippet}
      <input class="form-control whatever" name="whatever" type="hidden" value="Нижняя форма">
      <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <input id="qs_name" class="form-control" name="name" type="text">
              <label for="qs_name">Имя</label>
              <span class="error">{$_modx->getPlaceholder('fi.error.name')}</span>
            </div>
          </div>

          <div class="col-md-6">
            <div class="form-group">
              <input id="qs_phone_question" class="form-control phone_input" name="phone" type="text">
              <label for="qs_phone_question">Телефон</label>
              <span class="error_phone">{$_modx->getPlaceholder('fi.error.phone')}</span>
            </div>
          </div>

          <div class="col-12">
            <div class="form-group">
              <textarea id="qs_question" class="form-control" name="question" type="text"></textarea>
              <span class="error">{$_modx->getPlaceholder('fi.error.question')}</span>
              <label for="qs_question">Ваш вопрос</label>
            </div>
          </div>

          <div class="form-group col-12">
              <div class="controls text-center">
                  <button type="submit" class="btn btn-primary">Отправить</button>
              </div>
          </div>
        </div>
    </form>
</div>

<div class="text-white text-center have_questions_title mb-3">Заполните форму</div>
<form action="" method="post" class="ajax_form af_example" id="mbottom_form">
  <div class="row justify-content-center">
    <div class="col-md-6">
    <div class="form-group">
        <input type="text" class="s-message d-none" name="s-message" value=""/>
        <input name="form" type="hidden" value="have_questions">
        <input type="hidden" name="utm" value="">
        <input type="hidden" name="site" value="">
        <input id="af_name_question" class="form-control" name="name" type="text">
        <label for="af_name_question">Имя</label>
        <small class="error">{$_modx->getPlaceholder('fi.error.name')}</small>
      </div>
    </div>

    <div class="col-md-6">
      <div class="form-group">
        <input id="af_phone_question" class="form-control phone_input" name="phone" type="text">
        <label for="af_phone_question">Телефон</label>
        <small class="error">{$_modx->getPlaceholder('fi.error.phone')}</small>
      </div>
    </div>

    <div class="col-12">
      <div class="form-group">
        <textarea id="af_question" class="form-control" name="question" type="text"></textarea>
        <span class="error">{$_modx->getPlaceholder('fi.error.question')}</span>
        <label for="af_question">Ваш вопрос</label>
      </div>
    </div>
    <div class="col-10 px-1">
    <div class="custom-control custom-checkbox w-100 mb-3">
    <input type="hidden" name="agree_question" value="">
    <input type="checkbox" class="custom-control-input agree-cont" name="agree_question" id="agree_question" value="agree" checked>

    <label class="custom-control-label politic_label" for="agree_question">
      даю согласие на обработку персональных данных и соглашаюсь c <a href="{551 | url}" target="_blank">политикой конфиденциальности</a>
    <span class="error_agreecont">[[+fi.error.agreecont]]</span>
  </div>
    </label>
    </div>

    <div class="form-group col-12">
        <div class="controls text-center">
            <button type="submit" class="btn btn-primary">Отправить</button>
        </div>
    </div>
  </div>
</form>

<form action="" method="post" class="ajax_form af_example" id="mcallback_form">
  <div class="modal-body p-4">
    <div class="row pt-2">
      <div class="d-none">
        <input class="whatever" name="whatever" type="text">
        <input name="form" type="text" value="order">
        <input type="hidden" name="utm" value="">
        <input type="hidden" name="site" value="">
      </div>

      <div class="col-md-6">
        <div class="form-group mb-2">
          <input id="af_name" class="form-control" name="name" type="text">
          <span class="error">{'fi.error.name' | placeholder}</span>
          <label for="af_name">Имя</label>
        </div>
      </div>

      <div class="col-md-6 mt-4 mt-md-0">
        <div class="form-group mb-2">
          <input id="af_phone" class="form-control phone_input" name="phone" type="text">
           <span class="error_phone">{'fi.error.phone' | placeholder}</span>
          <label for="af_phone">Телефон</label>
        </div>
      </div>
    </div>
    <div class="col-11 px-1">
    <div class="custom-control custom-checkbox w-100 mb-3">
    <input type="hidden" name="agreecont" value="">
    <input type="checkbox" class="custom-control-input agree-cont" name="agreecont" id="agree_cont_order" value="agree" checked>

    <label class="custom-control-label politic_label" for="agree_cont_order">
      даю согласие на обработку персональных данных и соглашаюсь c <a href="{551 | url}" target="_blank">политикой конфиденциальности</a>
  </div>
    </label>
    </div>
    <div class="text-center w-100">
      <button type="submit" class="btn btn-primary">Заказать</button>
    </div>
  </div>
</form>

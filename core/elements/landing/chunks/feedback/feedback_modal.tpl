<form action="" method="post" class="ajax_form" id="callback_form" >
  <div class="modal-body">
    <div class="feedback py-4">
        <div class="row">
            {'!utm_medium' | snippet}
            <input id="modal_whatever" class="form-control whatever" name="whatever" type="hidden">
            <div class="col-md-6">
              <div class="form-group">
                <input id="modal_name" class="form-control" name="name" type="text">
                <span class="error">{'fi.error.name' | placeholder} </span>
                <label for="modal_name">Имя</label>
              </div>
            </div>

            <div class="col-md-6">
              <div class="form-group">
                <input id="modal_phone" class="form-control phone_input" name="phone" type="tel">
                 <span class="error_phone">{'fi.error.phone' | placeholder}</span>
                <label for="modal_phone">Телефон</label>
              </div>
            </div>
      </div>
    </div>
  </div>
  <div class="modal-footer">
    <div class="text-center w-100">
      <button type="submit" class="btn btn-primary">Отправить</button>
    </div>
  </div>
</form>

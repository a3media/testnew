<form action="" method="post" class="ajax_form" id="settings">


  <div class="row">

    <!-- input block delimiter-->

    <div class="col-md-3 mt-3">
      <label class="control-label contract_form_label" for="time_to_begin">Начало рабочего дня</label>
      <div class="form-group">
        <input autocomplete="off" type="text" id="time_to_begin" name="time_to_begin" value="{'pr_work_time_begin' | config}" placeholder="" class="form-control timepic" />
        <span class="error_span error_time_to_begin">[[+fi.error.passport_date]]</span>
      </div>
    </div>
    <div class="col-md-3 mt-3">
      <label class="control-label contract_form_label" for="time_to_end">Конец рабочего дня</label>
      <div class="form-group">
        <input autocomplete="off" type="text" id="time_to_end" name="time_to_end" value="{'pr_work_time_end' | config}" placeholder="" class="form-control timepic" />
        <span class="error_span error_time_to_end">[[+fi.error.passport_date]]</span>
      </div>
    </div>
    <div class="col-md-6 mt-3">
      <p class="settings_form_description">Введите время (московское)</p>
    </div>

    <!-- input block delimiter-->

  </div>
  <!-- -->

  <!-- input block delimiter-->

  <!-- -->


  <div class="form-group mt-5">
    <div class="controls">
      <button type="submit" class="btn btn-primary">Сохранить</button>
    </div>
  </div>

  [[+fi.success:is=`1`:then=`
  <div class="alert alert-success">[[+fi.successMessage]]</div>
  `]]
  [[+fi.validation_error:is=`1`:then=`
  <div class="alert alert-danger">[[+fi.validation_error_span error_message]]</div>
  `]]
</form>

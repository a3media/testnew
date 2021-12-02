<form action="" method="post" class="ajax_form" id="contract">
  <input autocomplete="off" type="hidden" name="contract_id" value="{$contract_id}">
  <input autocomplete="off" type="hidden" name="deal_id" value="{$deal_id}">
  <input autocomplete="off" type="hidden" name="cliet_id" value="{$client_id}">
  <input autocomplete="off" type="hidden" name="payer_id" value="{$payer_id}">

  <!-- client data-->
  <h2 class="mb-4">Данные заявителя по договору</h2>
  <div class="row">
    <!-- input block delimiter-->
    <div class="col-md-2">
      <label class="control-label contract_form_label" for="lastName">Фамилия</label>
      <div class="form-group">
        <input autocomplete="off" type="text" id="lastName" name="lastName" value="" placeholder="" class="client_name surname form-control" />
        <span class="error_span error_lastName">[[+fi.error.lastName]]</span>
      </div>
    </div>
    <div class="col-md-2">
      <label class="control-label contract_form_label" for="firstName">Имя</label>
      <div class="form-group">
        <input autocomplete="off" type="text" id="firstName" name="firstName" value="" placeholder="" class="client_name name form-control" />
        <span class="error_span error_firstName">[[+fi.error.firstName]]</span>
      </div>
    </div>
    <div class="col-md-3">
      <label class="control-label contract_form_label" for="Otchestvo">Отчество </label>
      <div class="form-group">
        <input autocomplete="off" type="text" id="Otchestvo" name="middleName" value="" placeholder="" class="client_name patronymic form-control" />
        <span class="error_span error_middleName">[[+fi.error.middleName]]</span>
      </div>
    </div>
    <div class="col-md-5">
      <p class="contract_form_description">Ф.И.О. лица, являющегося заявителем по договору</p>
    </div>

    <!-- input block delimiter-->
    <div class="col-md-12 mt-3"><label class="control-label contract_form_label" for="address">Адрес регистрации </label></div>
    <div class="col-md-7">
      <div class="form-group">
        <input autocomplete="off" type="text" id="address" name="legalAddress" value="" placeholder="" class="form-control address_input" />
        <span class="error_span error_legalAddress">[[+fi.error.legalAddress]]</span>
      </div>
    </div>
    <div class="col-md-5">
      <p class="contract_form_description">Адрес прописки по паспорту</p>
    </div>

    <!-- input block delimiter-->
    <div class="col-md-12 mt-3"><label class="control-label contract_form_label" for="AdresKorespondentsii">Почтовый адрес </label></div>
    <div class="col-md-7">
      <div class="form-group">
        <input autocomplete="off" type="text" id="AdresKorespondentsii" name="Address" value="" placeholder="" class="form-control address_input" />
        <span class="error_span error_Address">[[+fi.error.Address]]</span>
      </div>
    </div>
    <div class="col-md-5">
      <p class="contract_form_description">На этот адрес мы отправим документы, при необходимости</p>
    </div>

    <!-- input block delimiter-->
    <div class="col-md-4 mt-3">
      <label class="control-label contract_form_label" for="PasportnieDannie">Серия и номер паспорта </label>
      <div class="form-group">
        <input autocomplete="off" type="text" id="PasportnieDannie" name="passport" value="" placeholder="" class="form-control passport" />
        <span class="error_span error_passport">[[+fi.error.passport]]</span>
      </div>
    </div>
    <div class="col-md-3 mt-3">
      <label class="control-label contract_form_label" for="DataVidachiPasporta">Дата выдачи паспорта </label>
      <div class="form-group">
        <input autocomplete="off" type="text" id="DataVidachiPasporta" name="passport_date" value="" placeholder="" class="form-control" />
        <span class="error_span error_passport_date">[[+fi.error.passport_date]]</span>
      </div>
    </div>
    <div class="col-md-5 mt-3">
      <p class="contract_form_description">Паспортные данные</p>
    </div>

    <!-- input block delimiter-->
    <div class="col-md-12 mt-3"><label class="control-label contract_form_label" for="KemVidanPasport">Кем выдан</label></div>
    <div class="col-md-7">
      <div class="form-group">
        <input autocomplete="off" type="text" id="KemVidanPasport" name="fms" value="" placeholder="" class="form-control vidan" />
        <span class="error_span error_fms">[[+fi.error.fms]]</span>
      </div>
    </div>
    <div class="col-md-5">
      <p class="contract_form_description">Орган, выдавшый паспорт</p>
    </div>

    <!-- input block delimiter-->
    <div class="col-md-12 mt-3"><label class="control-label contract_form_label" for="contract_phone">Номер телефона</label></div>
    <div class="col-md-7">
      <div class="form-group">
        <input autocomplete="off" type="text" id="contract_phone" name="contract_phone" value="" placeholder="" data-type="phone" class="form-control" />
        <span class="error_span error_contract_phone">[[+fi.error.contract_phone]]</span>
      </div>
    </div>
    <div class="col-md-5">
      <p class="contract_form_description">Номер телефона заявителя по договору</p>
    </div>
    <!-- input block delimiter-->
  </div>
  <!-- -->

  <!-- load address -->
  <h2 class="mt-5 mb-4">Погрузка</h2>

  <div class="row mb-5">
    <!-- input block delimiter-->
    <div class="col-md-7">
      <div class="custom-control custom-checkbox w-100 mb-3">
        <input autocomplete="off" type="checkbox" class="custom-control-input use_contract_name_load" name="use_contract_name_load" id="use_contract_name_load" value="use_contract_name" checked>
        <label class="custom-control-label contract_form_label" for="use_contract_name_load">
          Использовать Ф.И.О. заявителя по договору как Ф.И.О. грузоотправителя
        </label>
      </div>
      <label class="control-label contract_form_label" for="FIOGruzootpravitelya">Ф.И.О. грузоотправителя</label>
      <div class="form-group">
        <input autocomplete="off" type="text" id="FIOGruzootpravitelya" name="FIOGruzootpravitelya" value="" placeholder="" class="form-control fio" disabled />
        <span class="error_span error_FIOGruzootpravitelya">[[+fi.error.FIOGruzootpravitelya]]</span>
      </div>
    </div>

    <div class="col-md-5">
      <p class="contract_form_description">Если заявитель и отправитель груза - разные лица, снимите нажмите на чекбокс (галочку) чтобы заполнить поле Ф.И.О. грузоотправителя</p>
    </div>
    <!-- input block delimiter-->
    <div class="col-md-12 mt-3"><label class="control-label contract_form_label" for="address_pogruzki">Адрес погрузки</label></div>
    <div class="col-md-7">
      <div id="address_pogruzki_block">
        <input autocomplete="off" type="hidden" class="address_pogruzki_region_save" name="region_pogruzki" value="">
        <input autocomplete="off" type="hidden" class="address_pogruzki_save" name="address_pogruzki" value="">
        <input autocomplete="off" type="hidden" class="address_pogruzki_dop_save" name="address_pogruzki_dop" value="">
        <div class="form-group address_pogruzki">
          <input autocomplete="off" type="text" id="address_pogruzki" value="" placeholder=""  name="address_pogruzki_req" data-type=".address_pogruzki" class="form-control address address_input building" />
          <span class="error_span error_address_pogruzki_req">[[+fi.error.address_pogruzki_req]]</span>
          <div class="row align-items-end">
            <div class="col-md-3">
              <p class="control-label contract_form_label mt-2 mb-0">Квартира</p>
              <input autocomplete="off" type="text" value="" placeholder="" data-type=".address_pogruzki" class="form-control address room" />
            </div>
            <div class="col-md-3">
              <p class="control-label contract_form_label mt-2 mb-0" >Подъезд</p>
              <input autocomplete="off" type="text" value="" placeholder="" data-type=".address_pogruzki" class="form-control address porch" />
            </div>
            <div class="col-md-6">
              <div class="d-flex justify-content-center mt-3"><button type="button" class="btn btn-primary add_dop_item" data-place="#address_pogruzki_block" data-class="address_pogruzki" data-type="address">Добавить адрес</button></div>
            </div>
          </div>
        </div>
      </div>

    </div>
    <div class="col-md-5">
      <p class="contract_form_description">Заполните адрес на который необходимо подать автомобиль. Если адресов несколько - нажмите кнопку “Добавить адрес” и напишите его.</p>
    </div>
    <!-- input block delimiter-->
  </div>

<div id="phone_load_block">
  <input autocomplete="off" type="hidden" name="phones_load" class="dop_phone_load_item_save" value="">
  <div class="row mb-3">
    <!-- input block delimiter-->
    <div class="col-md-7">
      <div class="custom-control custom-checkbox w-100 mb-3">
        <input autocomplete="off" type="checkbox" class="custom-control-input use_contract_phone_load" id="use_contract_phone_load" data-class=".dop_phone_load_item" value="" checked>
        <label class="custom-control-label contract_form_label" for="use_contract_phone_load">
          Использовать номер телефона клиента
        </label>
      </div>
      <div class="row dop_phone_load_item">
        <div class="col-md-7">
          <label class="control-label contract_form_label" for="phone_load">Номер телефона</label>
          <div class="form-group">
            <input autocomplete="off" type="text" id="phone_load" name="phone_load" value="" placeholder="" data-type="phone"  data-class=".dop_phone_load_item" class="form-control contact_dop_input dop_phone" disabled/>
            <span class="error_span error_phone_load">[[+fi.error.phone_load]]</span>
          </div>
        </div>
        <div class="col-md-5">
          <label class="control-label contract_form_label" for="phone_load_name">Имя контакта</label>
          <div class="form-group">
            <input autocomplete="off" type="text" id="phone_load_name" name="phone_load_name" value="" placeholder="" data-class=".dop_phone_load_item" class="form-control fio contact_dop_input dop_phone_name" disabled/>
            <span class="error_span error_phone_load_name">[[+fi.error.phone_load_name]]</span>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-5">
      <p class="contract_form_description">Если заявитель и отправитель груза - разные лица, снимите нажмите на чекбокс (галочку) чтобы заполнить поле номер телефона.</p>
    </div>
    <!-- input block delimiter-->
  </div>

  <div class="row">
    <div class="col-md-7">
      <div id="dop_phone_load_block">
        <div class="row dop_phone_item dop_phone_load_item">
          <div class="col-md-7">
            <label class="control-label contract_form_label" for="dop_phone_load">Дополнительный номер телефона</label>
            <div class="form-group">
              <input autocomplete="off" type="text" id="dop_phone_load" value="" placeholder="" name="phone_load_req" data-type="phone" data-class=".dop_phone_load_item" class="form-control contact_dop_input dop_phone" />
              <span class="error_span error_phone_load_req">[[+fi.error.phone_load_req]]</span>
            </div>
          </div>
          <div class="col-md-5">
            <label class="control-label contract_form_label" for="dop_phone_load_name">Имя контакта</label>
            <div class="form-group">
              <input autocomplete="off" type="text" id="dop_phone_load_name" value="" placeholder=""  data-class=".dop_phone_load_item" class="form-control contact_dop_input fio dop_phone_name" />
              <span class="error_span error_dop_phone_load_name">[[+fi.error.dop_phone_load_name]]</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-5">
      <p class="contract_form_description">Обязательно укажите второй номер телефона, он нужен если мы не дозвонимся на первый.</p>
    </div>
  </div>
  <div class="row mt-3">
    <div class="col-md-7">
      <div class="d-flex justify-content-center">
        <button type="button"  class="btn btn-primary add_dop_item" data-place="#dop_phone_load_block" data-class="dop_phone_load_item" data-type="phone">Добавить еще один номер</button>
      </div>
    </div>
    <div class="col-md-5">
      <p class="contract_form_description">Нажмите если необходимо указать больше 2-х телефонов</p>
    </div>
  </div>

</div>
  <!-- input block delimiter-->

  <!-- -->



  <!-- download address -->
  <h2 class="mt-5 mb-4">Выгрузка</h2>

  <div class="row mb-5">
    <!-- input block delimiter-->
    <div class="col-md-7">
      <div class="custom-control custom-checkbox w-100 mb-3">
        <input autocomplete="off" type="checkbox" class="custom-control-input use_contract_name_upload" name="use_contract_name_upload" id="use_contract_name_upload" value="" checked>
        <label class="custom-control-label contract_form_label" for="use_contract_name_upload">
          Использовать Ф.И.О. заявителя по договору как Ф.И.О. грузополучателя
        </label>
      </div>
      <label class="control-label contract_form_label" for="FIOGruzopoluchatelya">Ф.И.О. грузополучаетеля</label>
      <div class="form-group">
        <input autocomplete="off" type="text" id="FIOGruzopoluchatelya" name="FIOGruzopoluchatelya" value="" placeholder="" class="form-control fio" disabled />
        <span class="error_span error_FIOGruzopoluchatelya">[[+fi.error.FIOGruzopoluchatelya]]</span>
      </div>
    </div>
    <div class="col-md-5">
      <p class="contract_form_description">Если заявитель и получатель груза - разные лица, снимите нажмите на чекбокс (галочку) чтобы заполнить поле Ф.И.О. грузополучателя</p>
    </div>
    <!-- input block delimiter-->
    <div class="col-md-12 mt-3"><label class="control-label contract_form_label" for="address_vigruzki">Адрес выгрузки</label></div>
    <div class="col-md-7">
      <div id="address_vigruzki_block">
        <input autocomplete="off" type="hidden" class="address_vigruzki_region_save" name="region_vigruzki" value="">
        <input autocomplete="off" type="hidden" class="address_vigruzki_save" name="address_vigruzki" value="">
        <input autocomplete="off" type="hidden" class="address_vigruzki_dop_save" name="address_vigruzki_dop" value="">
        <div class="form-group address_vigruzki">
          <input autocomplete="off" type="text" id="address_vigruzki" value="" placeholder="" name="address_vigruzki_req" data-type=".address_vigruzki" class="form-control address address_input building" />
          <span class="error_span error_address_vigruzki_req">[[+fi.error.address_vigruzki_req]]</span>
          <div class="row align-items-end">
            <div class="col-md-3">
              <p class="control-label contract_form_label mt-2 mb-0">Квартира</p>
              <input autocomplete="off" type="text" value="" placeholder="" data-type=".address_vigruzki" class="form-control address room" />
            </div>
            <div class="col-md-3">
              <p class="control-label contract_form_label mt-2 mb-0" >Подъезд</p>
              <input autocomplete="off" type="text" value="" placeholder="" data-type=".address_vigruzki" class="form-control address porch" />
            </div>
            <div class="col-md-6">
              <div class="d-flex justify-content-center mt-3"><button type="button" class="btn btn-primary add_dop_item" data-place="#address_vigruzki_block" data-class="address_vigruzki" data-type="address">Добавить адрес</button></div>
            </div>
          </div>
        </div>
      </div>

    </div>
    <div class="col-md-5">
      <p class="contract_form_description">Заполните адрес на котором необходимо выгрузить груз. Если адресов несколько - нажмите кнопку “Добавить адрес” и напишите его.</p>
    </div>
    <!-- input block delimiter-->
  </div>


  <input autocomplete="off" type="hidden" name="phones_unload" class="dop_phone_unload_item_save" value="">
  <div class="row mb-3 dop_phone_unload_item">
    <!-- input block delimiter-->
    <div class="col-md-7">
      <div class="custom-control custom-checkbox w-100 mb-3">
        <input autocomplete="off" type="checkbox" class="custom-control-input use_contract_phone_unload" data-class=".dop_phone_unload_item" id="use_contract_phone_unload" value="" checked>
        <label class="custom-control-label contract_form_label" for="use_contract_phone_unload">
          Использовать номер телефона клиента
        </label>
      </div>
      <div class="row">
        <div class="col-md-7">
          <label class="control-label contract_form_label" for="phone_unload">Номер телефона</label>
          <div class="form-group">
            <input autocomplete="off" type="text" id="phone_unload" name="phone_unload" value="" placeholder="" data-class=".dop_phone_unload_item" data-type="phone" class="form-control contact_dop_input dop_phone" disabled />
            <span class="error_span error_phone_unload">[[+fi.error.phone_unload]]</span>
          </div>
        </div>
        <div class="col-md-5">
          <label class="control-label contract_form_label" for="phone_unload_name">Имя контакта</label>
          <div class="form-group">
            <input autocomplete="off" type="text" id="phone_unload_name" name="phone_unload_name" value="" placeholder="" data-class=".dop_phone_unload_item" class="form-control fio contact_dop_input dop_phone_name" disabled/>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-5">
      <p class="contract_form_description">Если заявитель и получатель груза - разные лица, снимите нажмите на чекбокс (галочку) чтобы заполнить поле номер телефона.</p>
    </div>
    <!-- input block delimiter-->
  </div>


  <div class="row">
    <div class="col-md-7">
      <div id="dop_phone_unload_block">
        <div class="row dop_phone_item dop_phone_unload_item">
          <div class="col-md-7">
            <label class="control-label contract_form_label" for="dop_phone_unload">Дополнительный номер телефона</label>
            <div class="form-group">
              <input autocomplete="off" type="text" id="dop_phone_unload" value="" placeholder="" data-type="phone" name="phone_unload_req" data-class=".dop_phone_unload_item" class="form-control contact_dop_input dop_phone" />
              <span class="error_span error_phone_unload_req">[[+fi.error.phone_unload_req]]</span>
            </div>
          </div>
          <div class="col-md-5">
            <label class="control-label contract_form_label" for="dop_phone_unload_name">Имя контакта</label>
            <div class="form-group">
              <input autocomplete="off" type="text" id="dop_phone_unload_name" value="" placeholder=""  data-class=".dop_phone_unload_item" class="form-control contact_dop_input fio dop_phone_name" />
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-5">
      <p class="contract_form_description">Обязательно укажите второй номер телефона, он нужен если мы не дозвонимся на первый.</p>
    </div>
  </div>
  <div class="row mt-3">
    <div class="col-md-7">
      <div class="d-flex justify-content-center">
        <button type="button"  class="btn btn-primary add_dop_item" data-place="#dop_phone_unload_block" data-class="dop_phone_unload_item" data-type="phone">Добавить еще один номер</button>
      </div>
    </div>
    <div class="col-md-5">
      <p class="contract_form_description">Нажмите если необходимо указать больше 2-х телефонов</p>
    </div>
  </div>
  <!-- input block delimiter-->

  <!-- -->


  <!-- politic -->
  <div class="row mt-5">
    <div class="col-12">
      <div class="custom-control custom-checkbox w-100 mb-3">
        <input autocomplete="off" type="hidden" name="agreecont" value="">
        <input autocomplete="off" type="checkbox" class="custom-control-input agree-cont" name="agreecont" id="agree-cont" value="agree" checked>
        <label class="custom-control-label contract_form_label" for="agree-cont">
          даю согласие на обработку персональных данных и соглашаюсь c <a href="{551 | url}" target="_blank">политикой конфиденциальности</a>
          <span class="error_span error_agreecont">[[+fi.error.agreecont]]</span>
        </label>
      </div>
    </div>
  </div>
  <!-- ok button -->

  <div class="form-group mt-5">
    <div class="controls">
      <button type="submit" class="btn btn-primary">[[%af_submit]]</button>
    </div>
  </div>

  [[+fi.success:is=`1`:then=`
  <div class="alert alert-success">[[+fi.successMessage]]</div>
  `]]
  [[+fi.validation_error:is=`1`:then=`
  <div class="alert alert-danger">[[+fi.validation_error_span error_message]]</div>
  `]]
</form>

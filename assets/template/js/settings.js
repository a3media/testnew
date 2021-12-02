var url ='https://prtrans.ru/assets/contract_dop.php'; //url для запросов html

//dadata api
var dkey = 'b57a73617abf260893af0edd690a1921f8677429';
var adress_dadata; //переменная для доступа к данным от DADATA по выбраному адресу

let cal_local = new Object({
  firstDayOfWeek: 1,
  weekdays: {
      shorthand: ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб'],
      longhand: ['Воскресенье', 'Понедельник', 'Вторник', 'Среда', 'Четверг', 'Пятница', 'Суббота'],
  },
  months: {
      shorthand: ['Янв', 'Фев', 'Март', 'Апр', 'Май', 'Июнь', 'Июль', 'Авг', 'Сен', 'Окт', 'Ноя', 'Дек'],
      longhand: ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
  }
});


$('.timepic').flatpickr({
  enableTime: true,
  noCalendar: true,
  dateFormat: "H:i",
  time_24hr: true,
});


function address_input_sug() {
  $('.address_input').suggestions({
      token: dkey,
      type: "ADDRESS",
      onSelect: function(sug) {
        adress_dadata = sug.data.region;
        $($(this).data('type')+'_region_save').val(adress_dadata);
      }
  });
}
address_input_sug();

function fio_input_sug() {
  $('.fio').suggestions({
      token: dkey,
      type: "NAME",
  });
}
fio_input_sug();

$('.name').suggestions({
    token: dkey,
    type: "NAME",
    params: {
  parts: ["NAME"]
},
});
$('.surname').suggestions({
    token: dkey,
    type: "NAME",
    params: {
  parts: ["SURNAME"]
},
});
$('.patronymic').suggestions({
    token: dkey,
    type: "NAME",
    params: {
  parts: ["PATRONYMIC"]
},
});

function save_address(selector) { //функия сейвит адреса при их изменении
  var all_address = "";
  var dop_address = {};
  $(selector).each(function (index, value) {
    if (all_address == "") {
      all_address = all_address + $(this).find('.building').val();
    } else {
      all_address = all_address + ";" + $(this).find('.building').val();
    }

    dop_address[index] = {};
    dop_address[index]['room'] = $(this).find('.room').val();
    dop_address[index]['porch'] = $(this).find('.porch').val();

  });
      console.log(all_address);
      console.log(JSON.stringify(dop_address));
      $(selector+'_save').val(all_address);
      $(selector+'_dop_save').val(JSON.stringify(dop_address));
}

function save_contacts(selector) { //функия сейвит контакты
  var dop_phones = {};
  $(selector).each(function (index, value) {
    dop_phones[index] = {};
    dop_phones[index]['phone'] = $(this).find('.dop_phone').val();
    dop_phones[index]['name'] = $(this).find('.dop_phone_name').val();
  });
      console.log(JSON.stringify(dop_phones));
      $(selector+'_save').val(JSON.stringify(dop_phones));
}

$('.vidan').suggestions({
  token: dkey,
  type: "fms_unit"
});
//inputmask
$('#PasportnieDannie').inputmask("9999 / 999999");
function phone_input_mask() {
  $('[data-type="phone"]').inputmask("+7 999 999-99-99");
}
phone_input_mask();


//реакция на изменение фио
$('body').on('change', '.client_name', function (){
  var fio = $('#lastName').val() + " " +  $('#firstName').val() + " " +  $('#Otchestvo').val();
  if($('#use_contract_name_load').is(':checked')){
    $('#FIOGruzootpravitelya').val(fio);
  }
  if($('#use_contract_name_upload').is(':checked')){
    $('#FIOGruzopoluchatelya').val(fio);
  }
  if($('#use_contract_phone_load').is(':checked')){
    $('#phone_load_name').val($('#firstName').val());
    save_contacts(".dop_phone_load_item");
  }
  if($('#use_contract_phone_unload').is(':checked')){
    $('#phone_unload_name').val($('#firstName').val());
    save_contacts(".dop_phone_unload_item");
  }
})
//реакция на изменение телефоне
$('body').on('change', '#contract_phone', function (){
  if($('#use_contract_phone_load').is(':checked')){
    $('#phone_load').val($('#contract_phone').val());
    save_contacts(".dop_phone_load_item");
  }
  if($('#use_contract_phone_unload').is(':checked')){
    $('#phone_unload').val($('#contract_phone').val());
    save_contacts(".dop_phone_unload_item");
  }
})


//рекция на чекбокс ФИО в погрузке
$('body').on('change', '#use_contract_name_load', function (){
  if($(this).is(':checked')){
    var fio = $('#lastName').val() + " " +  $('#firstName').val() + " " +  $('#Otchestvo').val();
    $('#FIOGruzootpravitelya').val(fio);
    $('#FIOGruzootpravitelya').prop('disabled', true);
  }
  else {
    $('#FIOGruzootpravitelya').prop('disabled', false);
  }
})
//рекция на чекбокс телефона в погрузке
$('body').on('change', '#use_contract_phone_load', function (){
  if($(this).is(':checked')){
    $('#phone_load').val($('#contract_phone').val());
    $('#phone_load').prop('disabled', true);
    $('#phone_load_name').val($('#firstName').val());
    $('#phone_load_name').prop('disabled', true);
      save_contacts($(this).data('class'));
  }
  else {
    $('#phone_load').prop('disabled', false);
    $('#phone_load_name').prop('disabled', false);
      save_contacts($(this).data('class'));
  }
})


//рекция на чекбокс ФИО в выгрузке
$('body').on('change', '#use_contract_name_upload', function (){
  if($(this).is(':checked')){
    var fio = $('#lastName').val() + " " +  $('#firstName').val() + " " +  $('#Otchestvo').val();
    $('#FIOGruzopoluchatelya').val(fio);
    $('#FIOGruzopoluchatelya').prop('disabled', true);
  }
  else {
    $('#FIOGruzopoluchatelya').prop('disabled', false);
  }
})
//рекция на чекбокс телефона в выгрузке
$('body').on('change', '#use_contract_phone_unload', function (){
  if($(this).is(':checked')){
    $('#phone_unload').val($('#contract_phone').val());
    $('#phone_unload').prop('disabled', true);
    $('#phone_unload_name').val($('#firstName').val());
    $('#phone_unload_name').prop('disabled', true);
      save_contacts($(this).data('class'));
  }
  else {
    $('#phone_unload').prop('disabled', false);
    $('#phone_unload_name').prop('disabled', false);
      save_contacts($(this).data('class'));
  }
})

//удаление дополнительного адреса
$('body').on('click', '.del_dop_item', function (){
  $(this).closest('.dop_item').remove();
  save_address($(this).data('type'));
})

//удаление дополнительного контакта
$('body').on('click', '.del_dop_phone', function (){
  $(this).closest('.dop_phone_item').remove();
  save_contacts($(this).data('class'));
})

//сохранение адресов в специальных полях
$('body').on('change', '.address', function (){
  save_address($(this).data('type'));
})

//создание дополнительных полей
$('body').on('click', '.add_dop_item', function (){
  var add_place = $(this).data('place');
  $.post(url, {action : 'dop_item', type : $(this).data('type'), place : $(this).data('place'), class : $(this).data('class')}, function(data) {
    $(add_place).append(data);
    address_input_sug();
    fio_input_sug();
    phone_input_mask();
  })
});

//сохранение телефонов в специальных полях
$('body').on('change', '.contact_dop_input', function (){
  save_contacts($(this).data('class'));
})

//Красивые инпуты начало
var label;
var target;
var checkMark = "fa-check"; //set the font-awesome icon class
var iconSize = 'fa-2x'; //set iconSize

function Form(){}

// Замените на свой API-ключ
var token = 'b57a73617abf260893af0edd690a1921f8677429';

var $city = $(".adress_city");

// удаляет районы города и всё с 65 уровня
function removeNonCity(suggestions) {
  return suggestions.filter(function(suggestion) {
    return suggestion.data.fias_level !== "5" && suggestion.data.fias_level !== "65";
  });
}

function join(arr /*, separator */) {
  var separator = arguments.length > 1 ? arguments[1] : ", ";
  return arr.filter(function(n){return n}).join(separator);
}

function cityToString(address) {
  return join([
      join([address.city_type, address.city], " "),
      join([address.settlement_type, address.settlement], " ")
    ]);
}

// Ограничиваем область поиска от города до населенного пункта
$city.suggestions({
  token: token,
  type: "ADDRESS",
  hint: false,
  count: 5,
  geoLocation: false,
  bounds: "city-settlement",
  onSuggestionsFetch: removeNonCity
});

Form.prototype.alterForm= function(){

    $('input').focus(function(e){
        form.setLabel(e.target);
        form.checkFocused();
    });
    $('input').focusout(function(e){
        form.setLabel(e.target);
        form.checkUnfocused(e.target);
    });
    $('textarea').focus(function(e){
        form.setLabel(e.target);
        form.checkFocused();
    });
    $('textarea').focusout(function(e){
        form.setLabel(e.target);
        form.checkUnfocused(e.target);
    });
};

Form.prototype.setLabel = function(target){
    label= $('label[for='+target.id+']');
};

Form.prototype.getLabel = function(){
    return label;
};

Form.prototype.checkFocused= function(){
    form.getLabel().addClass('active','');
};

Form.prototype.checkUnfocused= function(target){
    if($(target).val().length == 0){

        form.getLabel().removeClass('active');

        if(form.addCheckMark(target)){

            form.getLabel().next().remove();
        }
    }else if(!$(form.getLabel()).next().is($(checkMark))){
        form.getLabel().after("<span class='fa "+iconSize+" "+checkMark+"'></span>")
    }
};

Form.prototype.addCheckMark = function(){
    if(form.getLabel().next().is($("."+ checkMark +""))){
        return true;
    }else{
        return false;
    }
};
form = new Form();

function initialize(){
    form.alterForm();
}
initialize();
//красивые инпуты

$(document).ready(function() {
$(window).lazyLoadXT( {scrollContainer: '.st-content'});

    var top_show = 300;
    var delay = 1000;

    $('input').each(function (i, input) {
          if(!input.value.length) return;
          if (input.id){
            label= $('label[for='+input.id+']');
            $(label).addClass('active')
          }

        })
    $('.input_to_input').click(function () { // При клике по кнопке "Наверх" попадаем в эту функцию
      var input1 = $('#af_down').val();
      var input2 = $('#af_town').val();
      $('#af_down').val(input2);
      $('#af_town').val(input1);
      $('input').each(function (i, input) {
            if(!input.value.length) {
              if (input.id){
                label= $('label[for='+input.id+']');
                $(label).removeClass('active')
              }
            } else {
              if (input.id){
                label= $('label[for='+input.id+']');
                $(label).addClass('active')
              }
            }
          })
        });

    $('.st-content').scroll(function () {
      if ($(this).scrollTop() > top_show) $('#top_button').fadeIn();
      else $('#top_button').fadeOut();
    });
    $('#top_button').click(function () { // При клике по кнопке "Наверх" попадаем в эту функцию
      /* Плавная прокрутка наверх */
      $('.st-content').animate({
        scrollTop: 0
      }, delay);
    });

    //modal form open-close
    $('body').on('click', '.modal_ajax_btn', function (){
      var button = $(event.relatedTarget);
      var recipient = $(this).data('whatever');
      var modal = $('#modal_request');
       modal.find('.modal-body input.whatever').val(recipient);
       $('#modal_request h5').html(recipient);
       $.fancybox.open({
 	        src  : '#modal_request',
        });
    })

    /*
    $('#modal_request').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget);
      var recipient = button.data('whatever');
      var modal = $(this);
       modal.find('.modal-body input.whatever').val(recipient);
       $('#modal_request h5').html(recipient);
    });
    */
    $(document).on('af_complete', function(event, response) {
      var form = response.form;
      console.log(response);
      if (response.success){
         AjaxForm.Message.success = function() {};
      if (form.attr('id') == 'modal_offtime_form') {
          $.fancybox.close();
      }
      else {
        if (response.message == 'OK'){
          $.fancybox.close();
          $.fancybox.open({
             src  : '#modal_success',
           });
        } else {
          $.fancybox.close();
          $.fancybox.open({
             src  : '#modal_offtime',
           });
          $('#offtime_phone').val(response.message);
        }
      }};
    });

    $('body').on('click', '.btn_close_modal', function (){
      $.fancybox.close();
    });


          $('.review_wrapper').owlCarousel({
              loop:true,
              nav:true,
              responsive:{
                  0:{
                      items:1
                  }
              }
          })
          $('.pereezdy_wrapper').owlCarousel({
              loop:true,
              nav:true,
              responsive:{
                  0:{
                      items:1
                  },
                  576:{
                      items:2
                  },
                  768:{
                      items:3
                  },
                  992:{
                      items:5
                  }
              }
          })
          $('.mobile_nav a').click(function () {
            setTimeout(function () {
                              $('#st-container').removeClass('st-menu-open');
                         }, 250)
           });
});

var cHeight = 0;

$('.carousel').on('slide.bs.carousel', function(e) {

  var $nextImage = $(e.relatedTarget).find('img');

  $activeItem = $('.active.item', this);

  // prevents the slide decrease in height
  if (cHeight == 0) {
    cHeight = $(this).height();
    $activeItem.next('.item').height(cHeight);
  }

  // prevents the loaded image if it is already loaded
  var src = $nextImage.data('src');

  if (typeof src !== "undefined" && src != "") {
    $nextImage.attr('src', src)
    $nextImage.data('src', '');
  }
});

//phone mask
window.addEventListener("DOMContentLoaded", function() {
    [].forEach.call( document.querySelectorAll('.phone_input'), function(input) {
    var keyCode;
    function mask(event) {
        event.keyCode && (keyCode = event.keyCode);
        var pos = this.selectionStart;
        if (pos < 3) event.preventDefault();
        var matrix = "+7 (___) ___-__-__",
            i = 0,
            def = matrix.replace(/\D/g, ""),
            val = this.value.replace(/\D/g, ""),
            new_value = matrix.replace(/[_\d]/g, function(a) {
                return i < val.length ? val.charAt(i++) || def.charAt(i) : a
            });
        i = new_value.indexOf("_");
        if (i != -1) {
            i < 5 && (i = 3);
            new_value = new_value.slice(0, i)
        }
        var reg = matrix.substr(0, this.value.length).replace(/_+/g,
            function(a) {
                return "\\d{1," + a.length + "}"
            }).replace(/[+()]/g, "\\$&");
        reg = new RegExp("^" + reg + "$");
        if (!reg.test(this.value) || this.value.length < 5 || keyCode > 47 && keyCode < 58) this.value = new_value;
        if (event.type == "blur" && this.value.length < 5)  this.value = ""
    }

    input.addEventListener("input", mask, false);
    input.addEventListener("focus", mask, false);
    input.addEventListener("blur", mask, false);
    input.addEventListener("keydown", mask, false)

  });

});

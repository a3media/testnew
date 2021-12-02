// Замените на свой API-ключ
var token = 'b57a73617abf260893af0edd690a1921f8677429';

var $city = $(".adress_city");

var contract_success = `
<h1 class="h2">Спасибо за заполнение!</h1>
<div class="home_intro_content">
  <p>Наш менеджер свяжется с вами и пришлет готовый договор</p>
</div>
`;

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


/*
function removeNonCity(suggestions) {
  return suggestions.filter(function(suggestion) {
    return suggestion.data.city_district === null && suggestion.data.fias_level !== "65";
  });
}
$(".adress_city").suggestions({
  token: dkey,
  type: "ADDRESS",
  hint: false,
  bounds: "city-settlement",
  onSuggestionsFetch: removeNonCity,
  onSelect: function(sug) {
  }
});

*/

//Красивые инпуты начало
var label;
var target;
var checkMark = "fa-check"; //set the font-awesome icon class
var iconSize = 'fa-2x'; //set iconSize

function Form(){}

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
    label= $('.form-group label[for='+target.id+']');
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
  $(".post_content img").wrap( function(){
  var link = $(this).attr("src");
      return '<a href="' + link + '" data-fancybox="gallery" class="blog_content_image my-3"></a>';

  });
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

    $('#modal_order').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget)
      var recipient = button.data('whatever')
      var modal = $(this)
       modal.find('.modal-body input.whatever').val(recipient)
    })

    $('#modal_request').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget)
      var recipient = button.data('whatever')
      var modal = $(this)
       modal.find('.modal-body input.whatever').val(recipient)
    })
    /*
   * Replace all SVG images with inline SVG
   */
   jQuery('img').filter(function() {
          return this.src.match(/.*\.svg$/);
      }).each(function(){
      var $img = jQuery(this);
      var imgID = $img.attr('id');
      var imgClass = $img.attr('class');
      var imgURL = $img.attr('src');

      jQuery.get(imgURL, function(data) {
          // Get the SVG tag, ignore the rest
          var $svg = jQuery(data).find('svg');

          // Add replaced image's ID to the new SVG
          if(typeof imgID !== 'undefined') {
              $svg = $svg.attr('id', imgID);
          }
          // Add replaced image's classes to the new SVG
          if(typeof imgClass !== 'undefined') {
              $svg = $svg.attr('class', imgClass+' replaced-svg');
          }

          // Remove any invalid XML tags as per http://validator.w3.org
          $svg = $svg.removeAttr('xmlns:a');

          // Replace image with new SVG
          $img.replaceWith($svg);

      }, 'xml');

    });
    $('#comments').bind("DOMSubtreeModified",function(){
      jQuery('img').filter(function() {
             return this.src.match(/.*\.svg$/);
         }).each(function(){
         var $img = jQuery(this);
         var imgID = $img.attr('id');
         var imgClass = $img.attr('class');
         var imgURL = $img.attr('src');

         jQuery.get(imgURL, function(data) {
             // Get the SVG tag, ignore the rest
             var $svg = jQuery(data).find('svg');

             // Add replaced image's ID to the new SVG
             if(typeof imgID !== 'undefined') {
                 $svg = $svg.attr('id', imgID);
             }
             // Add replaced image's classes to the new SVG
             if(typeof imgClass !== 'undefined') {
                 $svg = $svg.attr('class', imgClass+' replaced-svg');
             }

             // Remove any invalid XML tags as per http://validator.w3.org
             $svg = $svg.removeAttr('xmlns:a');

             // Replace image with new SVG
             $img.replaceWith($svg);

         }, 'xml');

       });
    });

          $('.owl-carousel').owlCarousel({
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
                      items:3
                  }
              }
          })

});

//modal ajax bootstrap
function phone_input(){
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

}


function modal_ajax(a,w,p){
  $.post('/assets/ajax/index.php', { action : a, what: w, phone: p}, function(data) {
    $.fancybox.open(data);
    $('.modal_ajax [name="utm"]').val($('#utm_info').val())
    $('.modal_ajax [name="site"]').val(window.location.origin)
    initialize();
    phone_input();
  })
}
$('body').on('click', '.modal_ajax_btn', function (){
  modal_ajax($(this).data('action'), $(this).data('whatever'))
  return false;
})

$(document).on('af_complete',function(event,r){
  var form = r.form;
  console.log(form.attr('id'));
  if (form.attr('id') == 'contract') {
    if(r.success){
      AjaxForm.Message.success=function(){

      }
      if(r.message =='OK'){
          $('#contract_intro').html(contract_success);
          $('#contract_form').html('');
      }else{
          console.log('форма неок');
      }
      if(r.hide){
        $.fancybox.close();
      }
    }
  } else {
    if(r.success){
      console.log(r.phone);
      AjaxForm.Message.success=function(){

      }
      if(r.message =='OK'){
        $.fancybox.close();

        modal_ajax('success', '',r.phone);
      }else{
        $.fancybox.close();
        modal_ajax('offtime', '',r.phone);
      }
      if(r.hide){
        $.fancybox.close();
      }
    }
  }

})

window.addEventListener("DOMContentLoaded", function() {

  phone_input()
});

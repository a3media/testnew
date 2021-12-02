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


    $('#modal_request').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget);
      var recipient = button.data('whatever');
      var modal = $(this);
       modal.find('.modal-body input.whatever').val(recipient);
       $('#modal_request h5').html(recipient);
    });
    $(document).on('af_complete', function(event, response) {
      var form = response.form;
      console.log(response);
      if (response.success){
         AjaxForm.Message.success = function() {};
      if (form.attr('id') == 'modal_offtime_form') {
          $('#modal_offtime').modal('hide');
      }
      else {
        if (response.message == 'OK'){
          $('#modal_success').modal('show');
        } else {
          $('#modal_offtime').modal('show');
          $('#offtime_phone').val(response.message);
        }
      }};
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
$(document).on('af_complete', function(event, response) {
  if (response.success == true) {
    $('#modal_request').modal('hide');
  }
});

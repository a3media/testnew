var myDropzone = new Dropzone("div#myId", { url: "assets/upload.php"});
myDropzone.element.appendChild(Dropzone.createElement("<div class=\"dz-default dz-message\"><button class=\"dz-button\" type=\"button\">".concat('Перетащите сюда фото чтобы прикрепить их', "</button></div>")));

myDropzone.on("complete", function(file) {
  $count = myDropzone.getAcceptedFiles();
  let images = "";
  console.log($count);
  $.each($count,function(index,value){
  console.log('Индекс: ' + index + '; Значение: ' + value['upload']['filename']);
  if (index > 0) {
    images = images + '||' + value['upload']['filename'];
  } else {
    images = images + value['upload']['filename'];
  }

  });
  console.log(images);
  $('[name="images"]').val(images);
});

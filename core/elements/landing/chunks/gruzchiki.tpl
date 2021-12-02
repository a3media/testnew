<div class="container py-5 mt-5" id="gruzchiki">
  <h2>Предоставим грузчиков на погрузку и выгрузку</h2>
  <div class="row align-items-center">
    <div class="col-4 col-lg-5 text-center px-0 px-lg-3">
      <div class="gruzchiki_image">
        <picture>
            <source srcset="{'/assets/landing/img/gruzchiki.jpg' | phpthumbon : '&q=75&f=webp'}" type="image/webp">
            <img src="#" data-src="/assets/landing/img/gruzchiki.jpg" alt="Грузчики на погрузку">
        </picture>
      </div>
    </div>
    <div class="col-8 col-lg-6">
      <div class="gruzchiki_text">
        {'tv.gruzchiki' | resource}
      </div>
    </div>
    <div class="col-lg-6 offset-lg-6 offset-md-4">
      <div class="text-center py-3">
        <button class="btn btn-primary modal_ajax_btn" type="button" data-whatever="Узнать подробности о грузчиках ">Узнать подробности</button>
      </div>
    </div>
  </div>
</div>

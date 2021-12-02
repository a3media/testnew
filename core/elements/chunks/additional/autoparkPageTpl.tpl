<div class="col-md-6">
  <div class="card my-3 p-2 ">
    <a href="{$link}">
      <picture>
          <source data-srcset="{$_pls['tv.image'] | phpthumbon : 'w=550&h=345&zc=0&q=75&f=webp'}" type="image/webp">
          <img data-src="{$_pls['tv.image'] | phpthumbon : 'w=550&h=345&zc=0&q=75'}" class="lazyload" alt="{$pagetitle}" />
      </picture>
    </a>
    <div class="card_avto_info">
      <div class="mb-2">
        <div class="card_avto_infoitem">
          {$_pls['tv.lifting']}
        </div>
      </div>
      <div class="">
        <div class="card_avto_infoitem">
          {$_pls['tv.scope']}
        </div>
      </div>
    </div>
    <div class="px-2">
      <a href="{$link}"><h3>{$pagetitle}</h3></a>
      <div class="card_introtext">{$introtext}</div>
    </div>
    <div class="card-body">
      <div class="row">
        <div class="col-6 pr-0 text-center">
          <a href="{$link}" class="btn btn-link">Подробнее</a>
        </div>
        <div class="col-6 pl-0 text-center">
          <button type="button" class="btn btn-primary w-100 py-2 modal_ajax_btn" data-action="order" data-whatever="{$pagetitle}">Заказать</button>
        </div>
      </div>
    </div>
  </div>
</div>

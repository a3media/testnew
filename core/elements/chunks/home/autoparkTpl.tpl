<div class="item">
  <div class="card m-2  mb-4 shadow-sm">
    <a href="{$link}">
      <picture>
          <source data-srcset="{$_pls['tv.image'] | phpthumbon : 'w=350&h=350&zc=0&q=75&f=webp'}" type="image/webp">
          <img data-src="{$_pls['tv.image'] | phpthumbon : 'w=350&h=350&zc=0&q=75'}" class="lazyload" alt="{$pagetitle}" />
      </picture>
    </a>
    <div class="card-body px-2">
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
          <a href="{$link}" class="btn btn-link px-2 pt-0">Подробнее</a>
          <button type="button" class="btn btn-primary modal_ajax_btn" data-action="order" data-whatever="{$pagetitle}">Заказать</button>
    </div>
  </div>
</div>

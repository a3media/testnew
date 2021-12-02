<div class="col-md-6 col-lg-4 my-3">
  <div class="card">
    <a href="{$link}">
      <picture>
          <source data-srcset="{$_pls['tv.image'] | phpthumbon : 'w=348&h=225&zc=1&q=85&f=webp'}" type="image/webp">
          <img data-src="{$_pls['tv.image'] | phpthumbon : 'w=348&h=225&zc=1&q=85'}" class="card-img-top lazyload" alt="{$pagetitle}" />
      </picture>
    </a>
    <div class="card-body">
      <a href="{$link}"><h3 class="card-title">{$pagetitle}</h3></a>
      <p class="card_introtext">{$description}</p>
      <div class="text-right pt-3">
        <button type="button" class="btn btn-primary modal_ajax_btn" data-action="order" data-whatever="{$pagetitle}">Заказать</button>
      </div>
    </div>
  </div>
</div>

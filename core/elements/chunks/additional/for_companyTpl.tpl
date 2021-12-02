<div class="col-md-6 my-3">
  <div class="card h-100">
    <div class="card-body">
      <div class="row">
        <div class="col-4 pr-0">
          <a href="{$link}">
            <picture>
                <source data-srcset="{$_pls['tv.image'] | phpthumbon : 'w=165&h=160&zc=0&q=85&f=webp'}" type="image/webp">
                <img data-src="{$_pls['tv.image'] | phpthumbon : 'w=165&h=160&zc=0&q=85'}" class="lazyload" alt="{$pagetitle}" />
            </picture>
          </a>
        </div>
        <div class="col-8">
          <a href="{$link}"><h3 class="card-title">{$pagetitle}</h3></a>
          <p class="card_introtext">{$description}</p>
          <div class="text-right">
            <button type="button" class="btn btn-primary modal_ajax_btn" data-action="order" data-whatever="{$pagetitle}">Заказать</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

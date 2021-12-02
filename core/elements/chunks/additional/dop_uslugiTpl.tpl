<div class="col-md-6 my-3">
  <div class="card h-100">
    <div class="card-body">
      <div class="row align-items-center">
        <div class="col-5">
          <a href="{$link}">
            <picture>
                <source data-srcset="{$_pls['tv.image'] | phpthumbon : 'w=193&h=133&zc=0&q=75&f=webp'}" type="image/webp">
                <img data-src="{$_pls['tv.image'] | phpthumbon : 'w=193&h=133&zc=0&q=75'}" class="lazyload" alt="{$pagetitle}" />
            </picture>
          </a>
        </div>
        <div class="col-7">
          <a href="{$link}"><h3 class="card-title">{$pagetitle}</h3></a>
          <div class="card_introtext">{$introtext | strip_tags | truncate : 160 : '...'}</div>
          <div class="text-right">
            <a href="{$link}" class="btn btn-primary">Подробнее</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

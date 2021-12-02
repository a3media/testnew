<div class="col-md-6 pb-3">
    <div class="dop-item row align-items-center">
      <div class="col-3 col-md-4 col-xl-3">
        <a href="{$link}" class="green_circle align-items-center">
          <picture>
              <source data-srcset="{$_pls['tv.image'] | phpthumbon : 'w=130&h=130&zc=0&q=75&f=webp'}" type="image/webp">
              <img data-src="{$_pls['tv.image'] | phpthumbon : 'w=130&h=130&zc=0&q=75'}" class="lazyload" alt="{$pagetitle}" />
          </picture>
        </a>
      </div>
      <div class="col-9 col-md-8 col-xl-9">
        <a href="{$link}"><h4>{$pagetitle}</h4></a>
        <div class="card_introtext">{$introtext | strip_tags | truncate : 100 : '...'}</div>
      </div>
    </div>
</div>

<div class="col-lg-6">
  <div class="card mb-4">
    <div class="card-body">
      <div class="row">
        <div class="col-4 pr-0">
          <a href="{$link}">
            <picture>
                <source data-srcset="{$_pls['tv.image'] | phpthumbon : 'w=165&h=100&zc=1&q=75&f=webp'}" type="image/webp">
                <img data-src="{$_pls['tv.image'] | phpthumbon : 'w=165&h=100&zc=1&q=75'}" class="lazyload" alt="{$pagetitle}" />
            </picture>
          </a>
        </div>
        <div class="col-8">
          <h2 class="h3"><a href="{$link}">{$pagetitle}</a></h2>
          <div class="card_introtext">
            {$introtext | strip_tags | truncate : 160 : '...'}
          </div>
          <div class="text-right">
            <a href="{$link}" class="btn btn-primary">Подробнее</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

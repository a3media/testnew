<div class="px-2 col-xl col-lg-3 col-md-4 col-sm-6 mb-3">
  <div class="gallery-images mb-3">
    {set $count = 0}
    {foreach $_pls['tv.gallery']  as $row}
      {set $img = '/assets/images/' ~ $row.image}
          <a data-fancybox="gallery{$id}" href="{$img}" class="{$row.MIGX_id != 1 ? 'd-none' : 'd-block'}">
            <picture>
                <source data-srcset="{$img | phpthumbon : '&w=255&h=235&zc=1&q=75&f=webp'}" type="image/webp">
                <img src="#" data-src="{$img | phpthumbon : "&w=255&h=235&zc=1"}" alt="{$_pls['tv.city_from']} - {$_pls['tv.city_to']}" class="last_work_image w-100">
            </picture>
          </a>
      {set $count = $count + 1}
      {/foreach}
      <div class="gallery-count">
        {$count} <svg><use xlink:href="/img/sprite.svg#images"></use></svg>
      </div>

  </div>
  <p class="align-items-center d-flex gallery_date" style="display: flex;"><svg><use xlink:href="/img/sprite.svg#calendar_green"></use></svg> {$publishedon | date_format:"%d.%m.%Y"}</p>
  <h6>{$_pls['tv.city_from']} - {$_pls['tv.city_to']}</h6>
</div>

<div class="col-md-3 mb-4">
  {if $_pls['tv.image']}
  <div class="post_image mb-3">
    <a href="https://prtrans.ru/{$uri}">
      <picture>
          <source srcset="{($_pls['tv.image']) | phpthumbon : '&w=420&h=290&q=75&zc=1&f=webp'}" type="image/webp">
          <img data-src="{($_pls['tv.image']) | phpthumbon : "&w=420&h=290&q=75&zc=1"}" alt="{$pagetitle}"  class="w-100">
      </picture>
    </a>
  </div>
  {/if}
  <div class="post_title">
      <a href="https://prtrans.ru/{$uri}"><h3>{if $longtitle}{$longtitle}{else}{$pagetitle}{/if}</h3></a>
  </div>
  <p>{$introtext}</p>
  <div class="text-right">
      <a href="https://prtrans.ru/{$uri}" class="btn btn-primary">Читать дальше</a>
  </div>
</div>

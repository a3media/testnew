<div class="card mb-3">
    <div class="card-body">
        <div class="post_title">
          <a href="{$uri}">
              <h2>{if $longtitle}{$longtitle}{else}{$pagetitle}{/if}</h2>
          </a>
        </div>
        {if $image}
        <div class="post_image mb-3">
          {set $image = "/assets/images/{$image}"}
          <a href="{$uri}">
            <picture>
                <source data-srcset="{$image | phpthumbon : 'q=75&f=webp'}" type="image/webp">
                <img data-src="{$image | phpthumbon : '&q=75'}" class="lazyload" alt="{$pagetitle}" />
            </picture>
          </a>
        </div>
        {/if}
        <div class="tags my-2">
          {$_modx->runSnippet('!tvssTags', [
            'id' => $id,
            'tv' => 73,
            'outputSeparator' => ' ',
            'tpl' => '@INLINE <a class="btn btn-outline-info btn-sm" href="/{"568" | url}?tag={$tag|urlencode}">{$tag}</a>'
          ])}
        </div>
        <div class="post_info py-2">
          <div class="d-inline-block pr-2">
            <a href="{$uri}#comments"><svg class="folder-categories-svg"><use xlink:href="img/sprite.svg#comment2"></use></svg> {$comments}</a>
          </div>
          <div class="d-inline-block pr-2">
            <svg class="folder-categories-svg"><use xlink:href="img/sprite.svg#eye"></use></svg> {$views}
          </div>
          <div class="d-inline-block">
            <svg class="folder-categories-svg"><use xlink:href="img/sprite.svg#calendar"></use></svg>  {$publishedon | dateago}
          </div>
        </div>
        <p>{$introtext}</p>
        <div class="text-right">
                <a href="{$uri}" class="btn btn-primary">Читать дальше</a>
        </div>
    </div>
</div>

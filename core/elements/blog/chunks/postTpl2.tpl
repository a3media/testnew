<div class="card mb-3">
    <div class="card-body">
        <div class="post_title">
          <a href="{$uri}">
              <h2>{if $longtitle}{$longtitle}{else}{$pagetitle}{/if}</h2>
          </a>
          {if $image} <a href="{$uri}"><img src="/assets/images/{$image}" alt="{$pagetitle}"></a>{/if}
        </div>
        <div class="tags my-2">
          {$_modx->runSnippet('!tvssTags', [
            'id' => $id,
            'tv' => 73,
            'outputSeparator' => ' ',
            'tpl' => '@INLINE <a class="btn btn-outline-info btn-sm" href="/{"568" | url}?tag={$tag|urlencode}">{$tag}</a>'
          ])}
        </div>
        <div class="post_info">

          <div class="d-inline-block pr-2">
            <a href="{$uri}#comments"><img src="/assets/images/blog/comment.svg" alt="Комментарии"> {$comments}</a>
          </div>
          <div class="d-inline-block pr-2"><img src="/assets/images/blog/eye.svg" alt="Количество просмотров"> {$views}</div>

          <div class="d-inline-block">
            <img src="/assets/images/blog/calendar.svg" alt="Время публикации"> {$date_ago}
          </div>
        </div>
        <p>{$introtext}</p>
        <div class="text-right">
                <a href="{$uri}" class="btn btn-primary">Читать дальше</a>
        </div>
    </div>
</div>

<div class="card mb-3">
  <div class="card-header bg-dark">
      <h2 class="card_h2 mb-0 text-white"><svg width="32"><use xlink:href="img/sprite.svg#tags"></use></svg> Тэги</h3>
    </div>
    <div class="card-body">
         <div class="tags_cloud">
           {$_modx->runSnippet('!tvssCloud', [
             'tv' => '73',
             'pageId' => '554',
             'parents' => '554',
             'tplWrapper' => '@INLINE {$output}',
             'tpl' => '@INLINE <a class="btn btn-outline-info btn-sm m-1 " href="/{"568" | url}?tag={$tag|urlencode}">{$tag} <span class="badge badge-info">{$count}</span></a>',
             'tplActive' => '@INLINE <a class="btn btn-info btn-sm m-1 " href="/{"568" | url}?tag={$tag|urlencode}">{$tag} <span class="badge badge-info">{$count}</span></a>'
           ])}
          </div>
    </div>
</div>

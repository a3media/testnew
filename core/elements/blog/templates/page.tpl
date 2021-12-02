{extends 'file:blog/templates/index.tpl'}
{block 'content'}
  <h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
      <div class="tags mb-3">
      {'tvssTags' | snippet : ['id' => $_modx->resource.id, 'tv' => 2, 'outputSeparator' => ' ', 'pageId' => 40, 'tpl' => '@INLINE <a class="btn btn-outline-info btn-sm" href="{$link}">{$tag}</a>' ]}
      </div>
      <div class="content mb-5">
        {$_modx->resource.content}
      </div>
{/block}

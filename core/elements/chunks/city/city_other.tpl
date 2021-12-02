<div class="container py-5" id="c_to_c_other">
  <h2 class="mb-4">Другие города</h2>
  <div class="row">
    {'!pdoResources' | snippet : [
    'resources' => '-'~ 'id' | resource,
    'where' => ['template' => '58'],
    'parents' => 590,
    'limit' => 24,
    'sortby' => 'RAND()',
    'tpl' => '@INLINE <div class="col-6 col-md-4"><p><a href="{$uri}">{$pagetitle}</a></p></div>'
    ]}
  </div>
</div>

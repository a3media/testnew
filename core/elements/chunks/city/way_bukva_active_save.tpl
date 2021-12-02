<div class="tab-pane fade show active" id="nav1{$id}" role="tabpanel" aria-labelledby="nav-tab{$id}">
  <div class="cities_list p-3">
    {'pdoResources' | snippet: [
    'parents' => $id,
    'hideContainers' => 1,
    'depth' => 2,
    'limit' => '1000',
    'sortby' => 'pagetitle',
    'sortdir' => 'ASC',
    'tpl' => '@INLINE <div class="mb-3"><a href="{$uri}">{$pagetitle}</a></div>',
    ]}

  </div>
</div>

<div class="tab-pane fade" id="modal-nav{$id}" role="tabpanel" aria-labelledby="nav-tab{$id}">
  <div class="cities_list p-3">
    {'pdoResources' | snippet: [
    'parents' => $id,
    'depth' => 0,
    'limit' => '1000',
    'sortby' => 'pagetitle',
    'sortdir' => 'ASC',
    'tpl' => '@INLINE <div class="mb-3"><a href="{$uri}">{$pagetitle}</a></div>',
    'select' => 'id, pagetitle, uri'
    ]}
  </div>
</div>

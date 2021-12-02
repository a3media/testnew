<div class="tab-pane fade" id="nav1{$id}" role="tabpanel" aria-labelledby="nav-tab{$id}">
  <div id="pagination_{$id}">
    <div class="cities_list rows p-3">
      {var $ids = 'pdoResources' | snippet: [
      'parents' => $id,
      'hideContainers' => 1,
      'depth' => 2,
      'limit' => '1000',
      'sortby' => 'pagetitle',
      'sortdir' => 'ASC',
      'outputSeparator' => ',',
      'tpl' => '@INLINE {$id}',
      ]}

      {var $pagination_id = '#pagination_' ~ $id}
      {'!pdoPage' | snippet: [
        'element' => 'prCitiesPages',
        'ajax' => 1,
        'ajaxMode' => 'default',
        'ajaxElemWrapper' => $pagination_id,
        'ajaxElemRows' => $pagination_id ~ ' .rows',
        'ajaxElemPagination' => $pagination_id ~ ' .pagination',
        'ajaxElemLink' => $pagination_id ~ ' .pagination a',
        'ids' => $ids,
        'limit' => '60',
        'tpl' => '@FILE chunks/city/direction.tpl' ,
        ]}
      </div>
      [[!+page.nav]]
  </div>
</div>

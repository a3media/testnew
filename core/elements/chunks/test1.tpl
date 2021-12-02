<div class="tab-pane fade" id="nav{$id}" role="tabpanel" aria-labelledby="nav-tab{$id}">
{'!pdoResources' | snippet: [
'parents' => $id,
'depth' => 0,
'limit' => '1000',
'sortby' => 'pagetitle',
'sortdir' => 'ASC',
'tpl' => '@INLINE <p>{$pagetitle}</p>'
]}
</div>

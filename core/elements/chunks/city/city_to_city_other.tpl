<div class="container py-5" id="c_to_c_other">
  <h2 class="text-center mb-4">Другие направления из г. {'parent' | resource | resource : 'pagetitle'}</h2>
  <div class="row">
    {'pdoResources' | snippet : [
    'resources' => '-'~ 'id' | resource,
    'parents' => 'parent' | resource,
    'limit' => 24,
    'sortby' => 'RAND()',
    'tpl' => '@INLINE
    <div class="col-md-4">
       <p><a href="{$uri}">{$pagetitle}</a></p>
    </div>
    '
    ]}
  </div>
</div>

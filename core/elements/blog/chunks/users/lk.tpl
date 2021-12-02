<div class="row">
  <div class="col-md-8">
    {'!haProfile' | snippet : [
    'id' => $_modx->resource.id,
     'field' => 'longtitle',
     'default' => 'pagetitle',
     'profileTpl' => '@FILE blog/chunks/users/lk_profile.tpl'
     ]}
  </div>
</div>

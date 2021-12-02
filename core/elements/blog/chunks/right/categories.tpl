<div class="d-none d-md-block">
  {'!HybridAuth' | snippet : [
  'logoutResourceId' => $_modx->resource.id,
  'loginResourceId' => $_modx->resource.id,
  'providers' => 'Facebook,Vkontakte,Google,Yandex',
  'logoutTpl' => '@FILE blog/chunks/hybridauth.tpl',
  'loginTpl' => '@FILE blog/chunks/hybridauth_login.tpl',
  'groups' => 'Users:1'
  ]}
</div>

<div class="card mb-3">
  <div class="card-header bg-dark">
      <h2 class="card_h2 mb-0 text-white">
        <svg class="folder-categories"><use xlink:href="img/sprite.svg#folder"></use></svg>
        Категории</h2>
    </div>

    <div class="card-body blog_categories">
        <ul class="list-unstyled">
          {$_modx->runSnippet('pdoResources', [
            'parents' => '554',
            'depth' => '0',
            'select' => 'pagetitle,id',
            'useWeblinkUrl' => '1',
            'tpl' => '@INLINE <li><p><a href="{$id | url}"><svg class="folder-categories-svg"><use xlink:href="img/sprite.svg#folder_mini"></use></svg> {$pagetitle}</a></p></li>'
          ])}

        </ul>
    </div>
</div>

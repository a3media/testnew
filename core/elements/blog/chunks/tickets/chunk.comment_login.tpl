<div class="ticket-comments alert alert-warning">
    {'!HybridAuth' | snippet : [
    'logoutResourceId' => $_modx->resource.id,
    'loginResourceId' => $_modx->resource.id,
    'providers' => 'Facebook,Vkontakte,Google,Yandex',
    'logoutTpl' => '@FILE blog/chunks/hybridauth.tpl',
    'loginTpl' => '@FILE blog/chunks/hybridauth_login.tpl',
      'groups' => 'Users:1'
    ]}

</div>

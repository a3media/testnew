<div>
  {'!Login' | snippet : [
  'loginTpl' => 'login_authTpl',
  'logoutTpl' => 'lgnLogoutTpl',
  'errTpl' => 'lgnErrTpl',
  'logoutResourceId' => '7',
  'loginResourceId' => '7',
  'loginMsg' => 'войти',
  'contexts' => 'web,blog'
  ]}
  <div class="social_auth text-center mt-3">
        {'!HybridAuth' | snippet : [
        'providers' => 'Vkontakte,Facebook,Yandex,Google',
        'groups' => 'Member:1',
        'loginResourceId' => '7',
        'logoutResourceId' => '7'
        ]}
  </div>
</div>

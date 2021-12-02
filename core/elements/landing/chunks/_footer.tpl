<footer class="mt-4">
  <div class="footer_menu mb-4">
    <div class="container">
    {include 'file:landing/chunks/_nav_main.tpl'}
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-md-5">
        <img data-src="/img/logo.svg" alt="{$_modx->config.site_name | htmlent}">
        <div class="social py-4 text-right">
          <a href="https://vk.com/prtransru" target="_blank"><svg class="vk_icon"><use xlink:href="/img/sprite.svg#vk"></use></svg></a>
          <a href="https://www.instagram.com/prtransru/" target="_blank"><svg class="insta_icon"><use xlink:href="/img/sprite.svg#insta"></use></svg></a>
        </div>
      </div>
      <div class="col-md-7 py-3">
        <div class="mb-3">
          <p> <strong>Юридическое название:</strong> {$_modx->config.pr_ur_name}</p>
          <p> <strong>ИНН/КПП:</strong> {$_modx->config.pr_inn}/{$_modx->config.pr_ur_kpp}</p>
          <p> <strong>ОГРН:</strong> {$_modx->config.pr_ur_ogrn}</p>
          <p> <strong>Юридический адрес:</strong> {$_modx->config.pr_ur_adress}</p>
          <p> <strong>Телефон:</strong> <a href="tel:{'pr_phone' | config | preg_replace : '![^0-9]+!' : ''}">{'pr_phone' | config}</a></p>
          <p> <strong>Email:</strong> <a href="mailto:{'pr_email' | config}">{'pr_email' | config}</a></p>
        </div>
      </div>
    </div>
  </div>
</footer>

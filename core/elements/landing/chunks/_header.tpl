<header>
  {include 'file:landing/chunks/_mobile_bar.tpl'}
  <div class="container  d-none d-lg-block">
      <div class="row align-items-center">
          <div class="col-lg-5">
              <div class="logo">
                <div class="d-md-none d-lg-block">
                    <img data-src="/img/logo.svg" alt="{$_modx->config.site_name | htmlent}">
                </div>
                <div class="d-none d-md-block d-lg-none">
                  <a href="/">
                    <img data-src="/img/logo_mini.svg" alt="{$_modx->config.site_name | htmlent}">
                  </a>
                </div>
              </div>
          </div>
          <div class="col-md-4 col-lg-4 offset-lg-3 text-right">
            <a href="https://wa.me/+78006000661" target="_blank"><svg class="whatsapp_icon"><use xlink:href="/img/sprite.svg#whatsapp"></use></svg></a>
              <div class="contact_header d-inline-block">
                  <a href="tel:{$_modx->config.pr_phone | preg_replace : '![^0-9]+!' : ''}" class="header_phone d-block">{'pr_phone' | config}</a>
                  <span>Звонки по России бесплатно</span>
              </div>
          </div>
      </div>
      {include 'file:landing/chunks/_nav_main.tpl'}
  </div>

</header>

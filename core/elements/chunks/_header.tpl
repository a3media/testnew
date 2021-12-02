<input type="hidden" id="utm_info" value="{'!utm_v2' | snippet}">
<header>
  {include 'file:chunks/_mobilenavbar.tpl'}
  <div class="container">
      <div class="row py-1 align-items-center">
          <div class="col-md-4 col-lg-6">
              <div class="logo">
                <div class="d-md-none d-lg-block">
                  <a href="/" title="Прайм Транс - Междугородние перевозки">
                    <img src="/img/logo.svg" alt="{$_modx->config.site_name | htmlent}">
                  </a>
                </div>
                <div class="d-none d-md-block d-lg-none">
                  <a href="/" title="Прайм Транс - Междугородние перевозки">
                    <img data-src="/img/logo_mini.svg" class="lazyload" alt="{$_modx->config.site_name | htmlent}">
                  </a>
                </div>
              </div>
          </div>
          <div class="d-none d-md-block col-md-3 col-lg-3">
            {include 'file:chunks/_city_select.tpl'}
        </div>
          <div class="col-md-5 col-lg-3 text-center">
            <div class="d-flex align-items-center justify-content-center w-100">
            <div><a href="https://wa.me/+78006000661" target="_blank"><svg class="whatsapp_icon"><use xlink:href="/img/sprite.svg#whatsapp"></use></svg></a></div>
              <div class="contact_header">
                  <a href="tel:{$_modx->config.pr_phone | preg_replace : '![^0-9+]+!' : ''}" class="header_phone d-block">{$_modx->getPlaceholder('+pr_phone')}</a>
                  <a href="tel:{$_modx->config.pr_phone2 | preg_replace : '![^0-9+]+!' : ''}" class="header_phone_region d-none d-md-block text-right">{$_modx->getPlaceholder('+pr_phone2')}</a>
              </div>
              </div>
          </div>
      </div>
  </div>
{include 'file:chunks/_nav_main.tpl'}
</header>

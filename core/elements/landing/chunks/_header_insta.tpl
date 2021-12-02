<header>
  <div class="mobile_navbar d-lg-none fixed-top shadow">
    <div class="mobile_navbar_inner py-2">
      <div class="row text-center align-items-center">
        <div class="col-10 col-sm-5">
          <img data-src="/img/logo.svg" alt="{$_modx->config.site_name | htmlent}" class="lazy-hidden">
        </div>
        <div class="col-2 col-sm-6 text-sm-right">
          <a href="tel:{$_modx->config.pr_phone | preg_replace : '![^0-9]+!' : ''}">
              <img data-src="/assets/landing/img/phone.svg" alt="bar" class="d-sm-none lazy-hidden">
          </a>
            <div class="contact_header d-none d-sm-inline-block">
                <a href="tel:{$_modx->config.pr_phone | preg_replace : '![^0-9]+!' : ''}" class="header_phone d-block">{'pr_phone' | config}</a>
                <span>Звонки по России бесплатно</span>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>
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
              <div class="contact_header d-inline-block">
                  <a href="tel:{$_modx->config.pr_phone | preg_replace : '![^0-9]+!' : ''}" class="header_phone d-block">{'pr_phone' | config}</a>
                  <span>Звонки по России бесплатно</span>
              </div>
          </div>
      </div>

  </div>

</header>

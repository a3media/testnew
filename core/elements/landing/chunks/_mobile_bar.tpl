<div class="mobile_navbar d-lg-none fixed-top shadow">
  <div class="mobile_navbar_inner py-2">
    <div class="row text-center align-items-center">
      <div class="col-2 col-sm-1 st-trigger-effects text-sm-left">
          <button data-effect="st-effect-3" class="btn btn-link p-0"><svg class="bar_icon"><use xlink:href="/img/sprite.svg#bar"></use></svg></button>
      </div>
      <div class="col-8 col-sm-5">
        <img data-src="/img/logo.svg" alt="{$_modx->config.site_name | htmlent}" class="lazy-hidden">
      </div>
      <div class="col-2 col-sm-6 text-sm-right">
        <a href="tel:{$_modx->config.pr_phone | preg_replace : '![^0-9]+!' : ''}">
            <svg class="d-sm-none phone_min"><use xlink:href="/img/sprite.svg#phone_min"></use></svg>
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

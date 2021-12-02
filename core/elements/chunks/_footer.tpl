<div class="footer_line bg-primary">
  <div class="container">
    <div class="row">
      <div class="col-12 col-lg-8 d-none d-md-block">
            <ul class="nav">
                {$_modx->runSnippet('pdoMenu@PropertySet', [
                'parents' => 0,
                'tplOuter' => '@INLINE {$wrapper}'
                'tpl' => '@INLINE <li class="nav-item {$classnames}"><a href="{$link}" class="nav-link" {$attributes}>{$menutitle}</a>{$wrapper}</li>'
                'level' => '1'
            ])}
          </ul>
      </div>
      <div class="col-md-4 text-center d-md-none d-lg-block text-md-right">
        <a href="tel:{$_modx->config.pr_phone| preg_replace : '![^0-9]+!' : ''}" class="footer_phone">{$_modx->config.pr_phone}</a>
      </div>
    </div>
  </div>
</div>

<footer>
    <div class="footer_full bg-dark d-none d-md-block pt-3 pb-4">
        <div class="container">
            <div class="row justify-content-between align-items-center mb-4">
                <div class="col-md-6">
                    <div class="footer_logo py-2">
                        <img data-src="{$_modx->config.pr_logo_footer}" class="lazyload" alt="Транспортная компания ПраймТранс">
                    </div>
                </div>
                <div class="col-md-5">
                  <div class="row justify-content-end">

                    <div class="col-5">
                      <a href="{$_modx->makeUrl($_modx->config.pr_review)}">
                      <h3 class="footer_title_green d-flex justify-content-end">
                          <svg><use xlink:href="img/sprite.svg#review"></use></svg>
                          Отзывы
                        </h3>
                      </a>
                    </div>
                    <div class="col-7 justify-content-end">
                      <a href="#" class="modal_ajax_btn" data-action="company_details">
                        <h3 class="footer_title_green d-flex justify-content-end">
                          <svg><use xlink:href="img/sprite.svg#recv"></use></svg>
                          Реквизиты
                        </h3>
                      </a>
                    </div>
                  </div>
                </div>
            </div>

              <div class="row">
                <div class="col-md-4">
                  <div class="footer_menu_for">
                  <h5 class="text-white mb-3">{'pdoField' | snippet : ['id' => $_modx->config.pr_page_for_person, 'field' => 'pagetitle']}</h5>
                  {$_modx->runSnippet('pdoMenu', [
                    'parents' => $_modx->config.pr_page_for_person,
                    'showHidden' => '1',
                    'hideContainers' => '0',
                    'select' => 'pagetitle,id',
                    'useWeblinkUrl' => '1',
                    'tpl' => '@INLINE <div class="footer_menu_for_item mb-3"><a href="{$link}">{$menutitle}</a>{$wrapper}</div>',
                    'tplOuter' => '@INLINE <div class="footer_menu_for_items">{$wrapper}</div>'
                  ])}
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="footer_menu_for">
                  <h5 class="text-white mb-3">{'pdoField' | snippet : ['id' => $_modx->config.pr_page_for_company, 'field' => 'pagetitle']}</h5>
                  {$_modx->runSnippet('pdoMenu', [
                    'parents' => $_modx->config.pr_page_for_company,
                    'showHidden' => '1',
                    'hideContainers' => '0',
                    'select' => 'pagetitle,id',
                    'useWeblinkUrl' => '1',
                    'tpl' => '@INLINE <div class="footer_menu_for_item mb-3"><a href="{$link}">{$menutitle}</a>{$wrapper}</div>',
                    'tplOuter' => '@INLINE <div class="footer_menu_for_items">{$wrapper}</div>'
                  ])}
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="footer_menu_for mb-3">
                  <h5 class="text-white mb-3">{'pdoField' | snippet : ['id' => $_modx->config.pr_page_aboutus, 'field' => 'pagetitle']}</h5>
                    <div class="row">
                      <div class="col-md-6">
                      {$_modx->runSnippet('pdoResources', [
                      'parents' => '0',
                      'resources' => $_modx->config.pr_page_additional_services,
                      'showHidden' => '1',
                      'select' => 'pagetitle,id',
                      'useWeblinkUrl' => '1',
                      'tpl' => '@INLINE <div class="footer_menu_for_item mb-3"><a href="{$link}">{$pagetitle}</a></div>'
                      ])}
                      </div>
                      <div class="col-md-6">
                      {$_modx->runSnippet('pdoResources', [
                      'parents' => '0',
                      'resources' => $_modx->config.pr_page_transported_goods,
                      'showHidden' => '1',
                      'select' => 'pagetitle,id',
                      'useWeblinkUrl' => '1',
                      'tpl' => '@INLINE <div class="footer_menu_for_item mb-3"><a href="{$link}">{$pagetitle}</a></div>'
                      ])}
                      </div>
                    </div>
                  </div>
                  <div class="footer_menu_for">
                  <h5 class="text-white mb-4">{'pdoField' | snippet : ['id' => $_modx->config.pr_page_price, 'field' => 'pagetitle']}</h5>

                      {$_modx->runSnippet('pdoMenu', [
                        'parents' => $_modx->config.pr_page_price,
                        'depth' => '0',
                        'select' => 'pagetitle,id',
                        'useWeblinkUrl' => '1',
                        'tpl' => '@INLINE <div class="col-md-6"><div class="footer_menu_for_item mb-3"><a href="{$link}">{$menutitle}</a>{$wrapper}</div></div>',
                        'tplOuter' => '@INLINE <div class="footer_menu_for_items"><div class="row">{$wrapper}</div></div>'
                      ])}

                  </div>
                </div>
              </div>
        </div>
    </div>
    <div class="footer_mobile bg-dark d-md-none py-4">
        <div class="container">
            <div class="logo">
                <img data-src="{$_modx->config.pr_logo_footer}" alt="Транспортная компания ПраймТранс" class="lazyload">
            </div>

            <div class="row align-items-center pt-3 pb-4">
              <div class="col-6 p-1">
                  <a href="{$_modx->makeUrl($_modx->config.pr_review)}">
                    <h3 class="footer_title_green d-flex justify-content-center">
                        <svg><use xlink:href="img/sprite.svg#review"></use></svg>
                        Отзывы
                      </h3>
                  </a>

              </div>
              <div class="col-6 p-1">
                <a href="#" data-toggle="modal" data-target="#modal_company_details">
                <h3 class="footer_title_green d-flex justify-content-center">
                    <svg><use xlink:href="img/sprite.svg#recv"></use></svg>
                    Реквизиты
                  </h3>
                  </a>
              </div>
            </div>
            <div class="accordion" id="accordionFooter">
              <div class="footer_menu_for mb-4">
                <div class="collapsed" data-toggle="collapse" data-target="#mse1" role="button" aria-expanded="true" aria-controls="mse1">
                  <h5 class="text-white mb-3 footer_akordion">{'pdoField' | snippet : ['id' => $_modx->config.pr_page_for_person, 'field' => 'pagetitle']}
                    <svg><use xlink:href="img/sprite.svg#footer_row"></use></svg>
                  </h5>
                </div>
                <div id="mse1" class="collapse" data-parent="#accordionFooter">
                  {$_modx->runSnippet('pdoMenu', [
                    'parents' => $_modx->config.pr_page_for_person,
                    'showHidden' => '1',
                    'hideContainers' => '0',
                    'select' => 'pagetitle,id',
                    'useWeblinkUrl' => '1',
                    'tpl' => '@INLINE <div class="footer_menu_for_item mb-3"><a href="{$link}">{$menutitle}</a>{$wrapper}</div>',
                    'tplOuter' => '@INLINE <div class="footer_menu_for_items">{$wrapper}</div>'
                  ])}
                </div>
              </div>

              <div class="footer_menu_for mb-4">
                <div class="collapsed" data-toggle="collapse" data-target="#mse2" role="button" aria-expanded="true" aria-controls="mse2">
                  <h5 class="text-white mb-3 footer_akordion">{'pdoField' | snippet : ['id' => $_modx->config.pr_page_for_company, 'field' => 'pagetitle']}
                    <svg><use xlink:href="img/sprite.svg#footer_row"></use></svg>
                  </h5>
                </div>
                <div id="mse2" class="collapse" data-parent="#accordionFooter">
                  {$_modx->runSnippet('pdoMenu', [
                    'parents' => $_modx->config.pr_page_for_company,
                    'showHidden' => '1',
                    'hideContainers' => '0',
                    'select' => 'pagetitle,id',
                    'useWeblinkUrl' => '1',
                    'tpl' => '@INLINE <div class="footer_menu_for_item mb-3"><a href="{$link}">{$menutitle}</a>{$wrapper}</div>',
                    'tplOuter' => '@INLINE <div class="footer_menu_for_items">{$wrapper}</div>'
                  ])}
                </div>
              </div>

              <div class="footer_menu_for mb-4">
                <div class="collapsed" data-toggle="collapse" data-target="#mse3" role="button" aria-expanded="true" aria-controls="mse3">
                  <h5 class="text-white mb-3 footer_akordion">{'pdoField' | snippet : ['id' => $_modx->config.pr_page_aboutus, 'field' => 'pagetitle']}
                    <svg><use xlink:href="img/sprite.svg#footer_row"></use></svg>
                  </h5>
                </div>
                <div id="mse3" class="collapse" data-parent="#accordionFooter">
                  {$_modx->runSnippet('pdoResources', [
                  'parents' => '0',
                  'resources' => $_modx->config.pr_page_additional_services,
                  'showHidden' => '1',
                  'select' => 'pagetitle,id',
                  'useWeblinkUrl' => '1',
                  'tpl' => '@INLINE <div class="footer_menu_for_item mb-3"><a href="{$link}">{$pagetitle}</a></div>'
                  ])}
                  {$_modx->runSnippet('pdoResources', [
                  'parents' => '0',
                  'resources' => $_modx->config.pr_page_transported_goods,
                  'showHidden' => '1',
                  'select' => 'pagetitle,id',
                  'useWeblinkUrl' => '1',
                  'tpl' => '@INLINE <div class="footer_menu_for_item mb-3"><a href="{$link}">{$pagetitle}</a></div>'
                  ])}
                </div>
              </div>
            </div>
        </div>
    </div>
</footer>

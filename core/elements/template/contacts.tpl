{extends 'file:template/index.tpl'} {block 'content'}
<div class="container contacts_page">
  <h1>{'pdoField' | snippet : ['id' => $_modx->resource.id, 'field' => 'longtitle', 'default' => 'pagetitle' ]}</h1>
  <div class="row mt-5 py-5">
    <div class="col-md-5 mb-5">
      <div class="row text-center">
        <div class="col-2">
          <svg><use xlink:href="img/sprite.svg#phone"></use></svg>
        </div>
        <div class="col-10 mb-3">
          <a href="tel:{$_modx->config.pr_phone}" class="h1 d-block mb-0 font_play contacts_phone1">{$_modx->config.pr_phone}</a>
          <small>Звонки по России бесплатны</small>
        </div>
        <div class="col-10 offset-2">
          <a href="tel:{$_modx->config.pr_phone2}" class="h2 d-block mb-0 header_phone_region">{$_modx->config.pr_phone2}</a>
        </div>
      </div>
    </div>
    <div class="col-md-5 offset-md-1 mb-5">
      <div class="row text-center">
        <div class="col-2">
          <svg><use xlink:href="img/sprite.svg#mail"></use></svg>
        </div>
        <div class="col-10 mb-3">
          <a href="mailto:{$_modx->config.pr_email}" class="h1 d-block mb-0 font_play contacts_email">{'pr_email' | config}</a>

        </div>
      </div>
    </div>
  </div>
  <h2>По вопросам сотрудничества</h2>
   <div class="pl-3 mb-5">
     <div class="contact_text mb-2">
       {$_modx->config.pr_email_parther_text}
     </div>
     <a href="mailto:{$_modx->config.pr_email_parther}" class="h3 font_play">{$_modx->config.pr_email_parther}</a>
   </div>
  <h2>Служба контроля качества</h2>
  <div class="pl-3 mb-5">
    <div class="contact_text mb-2">
      {$_modx->config.pr_email_control_text}
    </div>
    <a href="mailto:{$_modx->config.pr_email_control}" class="h3 font_play">{$_modx->config.pr_email_control}</a>
  </div>
  <h2>Наш IT  отдел</h2>
  <div class="pl-3 mb-5">
    <div class="contact_text mb-2">
      {$_modx->config.pr_email_it_text}
    </div>
    <a href="mailto:{$_modx->config.pr_email_it}" class="h3 font_play">{$_modx->config.pr_email_it}</a>
  </div>
  <h2>МЫ в VK</h2>
  <div class="pl-3 mb-5">
    <script type="text/javascript" src="https://vk.com/js/api/openapi.js?162"></script>

    <!-- VK Widget -->
    <div id="vk_groups"></div>
    <script type="text/javascript">
    VK.Widgets.Group( "vk_groups", { mode: 3, no_cover: 1, color3: '76B72A'}, 185222951);
    </script>
  </div>
  <div class="mb-4">
    <h2>Схема проезда</h2>
    <div class="contact_map">
{$_modx->config.pr_yamap}
    </div>

  </div>


</div>
{/block}

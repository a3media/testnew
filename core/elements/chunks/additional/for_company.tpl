<div class="for_company" id="for_company">
  <h2 class="text-center">Юридическим лицам</h2>
  <div class="container">
    <div class="row">
      {'pdoResources' | snippet : [
          'parents' => $_modx->config.pr_page_for_company,
          'depth' => 0'',
          'useWeblinkUrl' => '1',
          'scheme' => 'uri',
          'tpl' => '@FILE chunks/additional/for_companyTpl.tpl',
          'select' => 'pagetitle,id,description',
          'includeTVs' => 'image'
      ]}
    </div>
  </div>
</div>

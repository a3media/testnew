<div class="for_person bg-light" id="for_person">
  <h2 class="text-center">Физическим лицам</h2>
  <div class="container">
    <div class="row justify-content-center">
      {'pdoResources' | snippet : [
          'parents' => $_modx->config.pr_page_for_person,
          'depth' => 0'',
          'useWeblinkUrl' => '1',
          'scheme' => 'uri',
          'tpl' => '@FILE chunks/additional/for_personTpl.tpl',
          'select' => 'pagetitle,id,description',
          'includeTVs' => 'image'
      ]}
    </div>
  </div>
</div>

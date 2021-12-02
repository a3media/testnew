<div class="dop_uslugi">
    <h2 class="text-center pb-5">Дополнительные услуги </h2>
    <div class="container">
      <div class="row">
        {$_modx->runSnippet('pdoResources', [
          'parents' => '201',
          'depth' => '1',
          'tpl' => '@FILE chunks/additional/dopuslugiTpl.tpl',
          'useWeblinkUrl' => '1',
          'scheme' => 'uri',
          'select' => 'pagetitle,id,introtext',
          'includeTVs' => 'image'
        ])}
      </div>
    </div>
</div>

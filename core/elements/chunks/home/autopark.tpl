<div id="autopark" class="autopark py-5">
  <div class="container">
    <h2 class="text-center pb-4">Автопарк</h2>
    <div id="auto_home" class="row justify-content-center m-0">
      <div class="col-10">
        <div class="owl-carousel owl-theme">
          {$_modx->runSnippet('pdoResources', [
             'parents' => '15',
             'depth' => '1',
             'select' => 'pagetitle,id',
             'includeTVs' => 'image,headroom,lifting,scope',
             'useWeblinkUrl' => '1',
             'tpl' => '@FILE chunks/home/autoparkTpl.tpl'
           ])}
         </div>
      </div>
    </div>
  </div>
</div>
